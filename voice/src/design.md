1. run daemon and poll
2. keep open sound buffer
3. send real-time to ds and process buffer
    * needs to be connected to deepspeech to proccess buffer on-demand
NOTE: need some way to throw away garbage and collect only desired words

4. parse stt and map to keybinds - prolly a header that can be used
PARSER: when hits keyword hook forwards it as a cmd
    * maybe need a daemon for the parser... (?) - until EOF, const parses file
      and forwards keyword hooks

* clean interface, should map to easily callable binds
* just focus on up,down,left,right




# RECORDING
sf::SoundRecorder -> records audio (usually sends to a buffer, DS wants a buf!)

sf::SoundRecorderBuffer -> what we're looking for, proc for DS

SpeechToText...
    (1) initializes (in default constructor)
    
    run public method...
        (1) record()
        (2) decode()
        (3) parse()
            * need to "get" KeyQueue, to be processed in game loop
                * KeyQueue and Key should be interface ... how to organize?
