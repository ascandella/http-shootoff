#!/bin/sh
ARGS="-smp enable +S 24 +A 24 +K true"
exec erl \
    $ARGS \
    -pa ebin deps/*/ebin \
    -boot start_sasl \
    -sname mochi_dev \
    -s mochi \
    -s reloader
