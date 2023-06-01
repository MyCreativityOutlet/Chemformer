#!/bin/bash

python -m molbart.fine_tune \
  --dataset uspto_sep \
  --data_path molbart/data/seq-to-seq_datasets/uspto_sep.pickle \
  --model_path molbart/models/pre-trained/combined/step=1000000.ckpt \
  --task forward_prediction \
  --epochs 100 \
  --lr 0.001 \
  --schedule cycle \
  --batch_size 128 \
  --acc_batches 4 \
  --augment all \
  --aug_prob 0.5


