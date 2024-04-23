#!/bin/sh

# If inferring with the llama model, set 'use_lora' to 'False' and 'prompt_template' to 'ori_template'.
# If inferring with the default alpaca model, set 'use_lora' to 'True', 'lora_weights' to 'tloen/alpaca-lora-7b', and 'prompt_template' to 'alpaca'.
# If inferring with the llama-med model, download the LORA weights and set 'lora_weights' to './lora-llama-med' (or the exact directory of LORA weights) and 'prompt_template' to 'med_template'.
export CUDA_VISIBLE_DEVICES=2
python infer.py \
    --base_model './basemodels/huozi' \
    --lora_weights './lora-huozi-r16/checkpoint-6784' \
    --use_lora True \
    --instruct_dir './data/infer.json' \
    --prompt_template 'med_template'
