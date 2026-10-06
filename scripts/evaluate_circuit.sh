#!/bin/bash

MODEL=$1
CIRCUIT=$2
EVAL_DATA=$3
THRESHOLD=$4
START_LAYER=$5


# Run the ablation.py script with the specified arguments
python ablation.py \
--model $MODEL \
--circuit $CIRCUIT \
--data $EVAL_DATA \
--examples 40 \
--threshold $THRESHOLD \
--ablation mean \
--handle_errors 'default' \
--start_layer $START_LAYER \
--device cuda:0
