#!/bin/bash

set -e

./stop.sh
./rebuild.sh
./start.sh --build --force-recreate --remove-orphans

