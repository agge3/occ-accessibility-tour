/** @file speech-to-text.h
 * @authors agge3, kpowkitty
 * stt::SpeechToText API, uses SFML and Mozilla Deepspeech.
 * @see command.h Command enumeration public interface (e.g., Command::Key).
 */

#pragma once

#include <deepspeech.h>
#include <SFML/Audio/SoundBufferRecorder.hpp>

#include <string>

namespace stt {

class SpeechToText {
public:
    SpeechToText();
    ~SpeechToText();

    /**
     * @struct AudioBuffer
     * SpeechToText AudioBuffer to store sf::SoundBuffer in a better API for 
     * DeepSpeech. 
     */
    struct AudioBuffer {
        unsigned int channels;
        const short* samples;
        unsigned int count;
    };

    /**
    * @enum Channels
    * Enum to have well-defined Channels.
    */
    enum class Channels : unsigned int {
        Mono = 1,
        Stereo = 2,
    };

    void run();
    std::string get_decoded();
private:
    void record();
    void decode();

    ModelState* _ctx;
    StreamingState* _sctx;
    const char* _mpath;
    const char* _spath;
    int _sample_rate;
    AudioBuffer _buf;
    std::string _decoded;
    sf::SoundBufferRecorder _recorder;
};

}
