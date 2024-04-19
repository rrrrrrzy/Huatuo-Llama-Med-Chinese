#!/bin/bash
export CUDA_VISIBLE_DEVICES=7

exp_tag="e1"
python finetune.py \
    --base_model './basemodels/huozi2_7b' \
    --data_path './data/llama_data.json' \
    --output_dir './lora-llama-med-'$exp_tag \
    --prompt_template_name 'med_template' \
    --micro_batch_size 4 \
    --batch_size 4 \
    --wandb_run_name $exp_tag
