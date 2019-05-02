#!/usr/bin/env bash

THEME_PATH=$(pwd)
git pull "https://github.com/datosgobar/portal-andino"

cd portal_andino/
sudo ./dev.sh complete_up --theme_volume_src $THEME_PATH

docker exec andino /opt/theme/bin/local_tests.sh
