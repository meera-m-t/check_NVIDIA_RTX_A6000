#!/usr/bin/env bash

eval "$(micromamba shell hook shell=bash)" \
    && micromamba activate fastai-learner

jupyter lab --ip=0.0.0.0 --allow-root