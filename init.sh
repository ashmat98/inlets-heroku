#!/bin/bash

INLETS_VERSION=`cat inlets_version`
INLETS_VERSION=0.9.3


if [ ! -f "./bin/inlets" ]; then
  wget "https://github.com/inlets/inlets-pro/releases/download/0.9.3/inlets-pro" -O "./bin/inlets"
fi

chmod a+x ./bin/inlets
./bin/inlets server --port=$PORT --token="$TOKEN"
