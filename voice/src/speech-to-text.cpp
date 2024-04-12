/* Project: occ-accessibility-tour
 * Sub-project: voice
 * Developers: @agge3, @kpowkitty
 * Date: February 2024
 */

#include <deepspeech.h>
#include <SFML/Audio/SoundBufferRecorder.hpp>

#include <pthread.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

#include <assert.h>
#include <errno.h>
#include <math.h>
#include <string.h>
#include <time.h>
#include <sys/types.h>
#include <sys/stat.h>

#include <sstream>
#include <string>
#include <vector>
#include <iostream>
#include <assert>

static const char MODEL_PATH[] =
    "../dep/deepspeech-models/deepspeech-0.9.3-models.pbmm";
static const char SCORER_PATH[] =
    "../dep/deepspeech-models/deepspeech-0.9.3-models.scorer";

SpeechToText::SpeechToText() :
    _mpath(MODEL_PATH),
    _spath(SCORER_PATH),
    _ctx(),
    _sctx(),
    _sample_rate(16000),
    _buf()
{
    /** @brief Instantiate AudioBuffer.
     * @note Only channels are known (Channels::Mono), sf::SoundBuffer will
     * instantiate samples and count. */
    _buf.channels = static_cast<unsigned int>(Channels::Mono);

    /** @brief Create DeepSpeech model with model path and model context. */
    int status = DS_CreateModel(mpath, &ctx);
    if (status != 0) {
        char* error = DS_ErrorCodeToErrorMessage(status);
        fprintf(stderr, "Could not create model: %s\n", error);
        free(error);
        return 1;
    }

    /** @brief Add DeepSpeech scorer to model context. */
    status = DS_EnableExternalScorer(ctx, spath);
    if (status != 0) {
        fprintf(stderr, "Could not enable external scorer.\n");
        return 1;
    }

    // _sample_rate is used to set SFML sample rate, needs to match DS
    // sample rate
    assert(DS_GetModelSampleRate(ctx) == _sample_rate);

    // first check if an input audio device is available on the system
    if (!sf::SoundBufferRecorder::isAvailable()) {
        std::cerr << "Audio capture is not available on this system.\n";
    }

    // create the recorder
    sf::SoundBufferRecorder recorder;

    // xxx static_cast? what's the point of the enum, sort out better
    // (SEE: struct AudioBuffer instantiation)
    recorder.setChannelCount(buffer.channels);

    /** @brief This should be addressed... */
    #if defined(__GNUC__) || defined(__GNUG__)
        #pragma GCC diagnostic push
        #pragma GCC diagnostic ignored "-Wwrite-strings"
    #endif

    std::vector<char*> hotwords = {"up", "down", "left", "right"};
    for (int i = 0; i < hotwords.size(); ++i) {
        DS_AddHotWord(ctx, hotwords.at(0), 9.f);
    }
    std::vector<char*> coldwords = {"but", "at", "he", "ah", "the", "put", "bu"};
    for (int i = 0; i < coldwords.size(); ++i) {
        DS_AddHotWord(ctx, coldwords.at(0), -75.f);
    }

    #if defined(__GNUC__) || defined(__GNUG__)
        #pragma GCC diagnostic pop
    #endif
}

void SpeechToText::run()
{
    record();
    decode();
    parse();
}

/**
 * Record audio buffer for DeepSpeech to decode.
 * @note Runs on a new thread, decode() and parse() DOES NOT.
 * @todo Threading should be addressed.
 */
void SpeechToText::record() {
    // start the capture
    // NOTE: start(sampleRate = 44100), overwrite default to 16000 for DS
    std::cout << "Start recording\n";
    recorder.start(16000);

    // probably want some kind of set interval, not ideal, but workable
    // ...a better solution is overlapping and catting buffers, or having an
    // active buffer that is stream ... DS needs a buf though ... so not sure
    // (?)

    // xxx need to decide on correct buf interval
    sleep(1);

    // stop the capture
    recorder.stop();
    std::cout << "End recording\n";

    // retrieve the buffer that contains the captured audio data
    const sf::SoundBuffer& buffer = recorder.getBuffer();

    // need raw audio data
    // is vector<sf::Int16>
    // xxx convert sf::Int16 to short and std::vector to array - OK?
    _buf.samples = static_cast<const short*>(buffer.getSamples());

    // is std::size_t
    _buf.count = static_cast<unsigned int>(buffer.getSampleCount());

    /** @brief AudioBuffer is fully instantiated, SAFE to proceed
     * @note Each call of record() will overwrite AudioBuffer with a new
     * sf::AudioBuffer. */
}

std::string SpeechToText::decode() {
    std::cout << "Start decoding\n";
    char* stt = DS_SpeechToText(ctx, samples, count);
    std::cout << "End decoding\n";

    std::cout << stt << "\n";

    /** @brief Convert C char* stt to CXX std::string stt_cpp. stt is freed
     * from memory, CXX std::string will handle memory management. */
    std::string stt_cpp = stt;
    DS_FreeString(stt);
    return stt_cpp;
}

std::string SpeechToText::parse(std::string decoded) {
        /** @brief Parse CXX string for key inputs. */
    std::istringstream in(stt_cpp);
    std::string parse;
    int up, down, left, right;
    up = down = left = right = 0;
    while (in >> parse) {
        if (parse == "up") ++up;
        else if (parse == "down") ++down;
        else if (parse == "left") ++left;
        else if (parse == "right") ++right;
        else continue;
    }
}

/**
* DeepSpeech cleanup.
*/
SpeechToText::~SpeechToText()
{
    DS_FreeModel(ctx);
}
