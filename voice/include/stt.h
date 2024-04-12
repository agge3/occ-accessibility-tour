#pragma once

struct AudioBuffer {
    unsigned int channels;
    const short* samples;
    unsigned int count;
};

class SpeechToText {
public:
    enum class Channels : unsigned int {
        Mono = 1,
        Stereo = 2,
    };
    SpeechToText();
    void run();
private:
    AudioBuffer record();
    std::string decode(const Buffer& buf);
    std::string parse(std::string decoded);
    ModelState* _ctx;
    StreamingState* _sctx;
    char* _mpath;
    char* _spath;
    int _sample_rate;
    AudioBuffer _buf;
};
