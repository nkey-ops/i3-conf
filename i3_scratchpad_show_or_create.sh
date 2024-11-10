#!/bin/bash
# try showing the scratchpad window
echo "message"
if ! i3-msg scratchpad show; then
    # if there is no such window...

    # # Wait for the next window event.
    # i3-msg -t subscribe  '[ "window" ]' &
    # # launch the application.
    eval "terminator" 
    
    # # Move it to the scratchpad workspace
    i3-msg move scratchpad
fi
