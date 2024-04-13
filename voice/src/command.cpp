#include "speech-to-text.h"
#include "key-queue.h"
#include "command.h"

#include <sstream>

void stt::Command::parse() {    
    /** @brief Parse CXX string for key inputs. */
    std::istringstream in(_stt.get_decoded());
    std::string parse;
    while (in >> parse) {
        if (parse == "up")
            _key_queue->push(Key::Up);
        else if (parse == "down")
            _key_queue->push(Key::Down);
        else if (parse == "left") 
            _key_queue->push(Key::Left);
        else if (parse == "right") 
            _key_queue->push(Key::Right);
        else 
            continue;
    }
}

bool stt::Command::is_key_pressed(stt::Command::Key key) {
    // xxx why doesn't it work with !is_empty() (?)
    if (_key_queue->is_empty())
        return false;

    return true;
}

stt::Command::Key stt::Command::get_key() {
    return _key_queue->pop();
}

bool stt::Command::is_stt_key(stt::Command::Key key) {
    if (_key_queue->is_empty())
        return false;

    return true;
}
