#!/bin/bash
#raspivid -o - -t 0 -w 1920 -h 1080 -fps 30 -b 250000 | cvlc -vvv stream:///dev/stdin --sout '#rtp{access=udp,sdp=rtsp://:8554/stream}' :demux=h264
raspivid -o - -t 0 -w 1920 -h 1080 -fps 20 -b 250000 -rot 270 -hf | cvlc -vvv stream:///dev/stdin --sout '#rtp{access=udp,sdp=rtsp://:554/stream}' :demux=h264
#ffserver -f /etc/ffserver.conf & ffmpeg -v verbose -r 4 -s 600x480 -f video4linux2 -i /dev/zero http://localhost:8090/feed1.ffm
