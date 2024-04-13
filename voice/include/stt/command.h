#pragma once

#include "speech-to-text.h"
#include "key-queue.h"

class KeyQueue;

namespace stt {

// xxx need to use opaque-enum-declaration for key-queue to see enum
// xxx THIS circular dep needs to be addressed properly, perhaps extract Key
// out into its own file/enum declaration - need to PROPERLY sort out circular 
// dep and interface ... everything else should work properly ... 

class Command {
public:
    /** @enum Key
    *  Interface to obtain key pressed from SpeechToText.
    *  @remark Size of enum is defined, to be forwarded.
    */
    enum Key : int {
        Unknown = -1,
        A = 0,
        Up,
        Down,
        Left,
        Right,
    };

    enum class Scancode {
        Unknown = -1,
        A = 0,
        Up,
        Down,
        Left,
        Right,
    };

    /// xxx should these be static (?)
    bool is_stt_key(Command::Key key);
    bool is_key_pressed(Command::Key key);
    //static bool is_key_pressed(Command::Scancode code);

    Command::Key get_key();
private:
    void parse();

    SpeechToText _stt;
    // xxx is a ptr to avoid circular dep - think through motivations
    KeyQueue* _key_queue;
};

}
