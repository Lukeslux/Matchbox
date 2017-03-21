#!/usr/bin/env bash
# Run this script to host on your machine.

VIRTUALENV_ROOT=${VIRTUALENV_ROOT:-"${HOME}/.virtualenvs/lukeslux/matchbox"}
# Expects that you already setup your environment, so we check.
if [ ! -d ${VIRTUALENV_ROOT} ]; then
   echo "Could not find virtual environment, please run dev_setup.sh first." 1>&2
   exit 1
fi

source ${VIRTUALENV_ROOT}/bin/activate
export FLASK_APP=src/matchbox.py
flask run --host=0.0.0.0 --port=8800
