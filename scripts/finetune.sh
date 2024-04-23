#!/bin/bash
export CUDA_VISIBLE_DEVICES=3

exp_tag="lm3_ins"
python finetune.py \
    --base_model './basemodels/llama3_8b_ins' \
    --data_path './data/llama_data.json' \
    --output_dir './lora-llama-med-'$exp_tag \
    --prompt_template_name 'llama3_instruct' \
    --micro_batch_size 32 \
    --batch_size 32 \
    --lora_r 8 \
    --wandb_run_name $exp_tag
