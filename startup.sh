#!/bin/sh
sudo apt-get update
sudo apt-get install ffmpeg libsm6 libxext6  -y
GUNICORN_CMD_ARGS="--timeout 600 --access-logfile '-' --error-logfile '-' -c /opt/startup/gunicorn.conf.py --chdir=. -k uvicorn.workers.UvicornWorker" gunicorn app:app
