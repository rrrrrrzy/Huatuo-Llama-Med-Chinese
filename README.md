# Huatuo for AIAA 5049

## Preparation

Follow these steps to get your development environment running: 

Create conda environment from `environment.yml`:

```
conda env create -f environment.yml
conda activate hua
```

Pip install packages from `requirements.txt`:

```
pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
```

Download base models from huggingface (e.g. huozi2_7b):

```
export HF_ENDPOINT=https://hf-mirror.com
huggingface-cli download --resume-download HIT-SCIR/huozi-7b-rlhf --local-dir ./basemodels/huozi2_7b
```

## Run finetuning

**single GPU**

Specify the `--base_model` and `CUDA_VISIBLE_DEVICES` in `./script/finetune.sh`, then run:

```
bash script/finetune.sh
```

**multi GPUs**

Not ready yet...