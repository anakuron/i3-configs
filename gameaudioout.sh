#!/bin/bash
echo Setting up two virtual devices for Pulseaudio and configuring loopbacks for them

# Once everything is done, there should be two new virtual devices "game_out" is a forward of the output of whatever game I'm recording, and "duplex_out" is that combined with the audio from my headset's mic

# The following is directly from the simplescreenrecorder website guide to doing exactly this
echo Adding null sink: Duplex_Output
pactl load-module module-null-sink sink_name=duplex_out sink_properties=device.description="Duplex_Output"
echo Adding null sink: Game_Output
pactl load-module module-null-sink sink_name=game_out sink_properties=device.description="Game_Output"

# pactl load-module module-loopback source=game_out.monitor
pactl load-module module-loopback source=game_out.monitor sink=duplex_out
# pactl load-module module-loopback sink=duplex_out

# At this point there are the two new virtual devices, duplex_out and game_out, the game_out sync should be used as the output device for the game or whatever I'm recording, and that is then forwarded to the duplex_out device as well
# However, this did not include any forwarding of the microphone to the duplex_out, which is acheived in the following line, this is slightly annoying as it will only work with the specific headset I'm using and can't be generalised for other people, so you know, check that :þ
pactl load-module module-loopback source=usb-Focusrite_Scarlett_Solo_USB_Y7B5K7Y01293D9-00.analog-stereo sink=duplex_out
#alsa_input.usb-Focusrite_Scarlett_Solo_USB_Y7B5K7Y01293D9-00.analog-stereo
