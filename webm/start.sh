#!/bin/sh
cd `dirname $0`
ARGS="-smp enable +S 24 +A 24 +K true"
exec erl $ARGS -pa $PWD/ebin $PWD/deps/*/ebin -boot start_sasl -s reloader -s webm
