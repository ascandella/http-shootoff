#!/bin/sh
exec erl \
    -pa ebin deps/*/ebin \
    -boot start_sasl \
    -sname mochi_dev \
    -s mochi \
    -s reloader
