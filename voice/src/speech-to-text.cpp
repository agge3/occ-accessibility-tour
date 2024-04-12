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
    _sample_rate(16000);
{
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
    recorder.setChannelCount(static_cast<unsigned int>(Channels::Mono));
}

void SpeechToText::run() 
{
    // run stuffz
}

/**
* DeepSpeech cleanup.
*/
SpeechToText::~SpeechToText()
{
    DS_FreeString(stt);
    DS_FreeModel(ctx);
}
