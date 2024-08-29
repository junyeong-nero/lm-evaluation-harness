############### WARNING #################
# Check the data path in lm-eval package!

lm_eval --model hf \
    --model_args pretrained=upstage/SOLAR-10.7B-v1.0 \
    --tasks mmlu_pro_health \
    --device cuda:0 \
    --num_fewshot 5 \
    --batch_size 8 \
    --output_path "output/solar-base" \
    --wandb_args project="MMLU_pro_translated_benchmark" \
    --seed 42 --log_samples

lm_eval --model hf \
    --model_args pretrained=upstage/SOLAR-10.7B-Instruct-v1.0 \
    --tasks mmlu_pro_health \
    --device cuda:0 \
    --num_fewshot 5 \
    --batch_size 8 \
    --output_path "output/solar-inst" \
    --wandb_args project="MMLU_pro_translated_benchmark" \
    --seed 42 --log_samples

lm_eval --model hf \
    --model_args pretrained=yanolja/EEVE-Korean-10.8B-v1.0 \
    --tasks mmlu_pro_health \
    --device cuda:0 \
    --num_fewshot 5 \
    --batch_size 8 \
    --output_path "output/eeve-base" \
    --wandb_args project="MMLU_pro_translated_benchmark" \
    --seed 42 --log_samples

lm_eval --model hf \
    --model_args pretrained=yanolja/EEVE-Korean-Instruct-10.8B-v1.0 \
    --tasks mmlu_pro_health \
    --device cuda:0 \
    --num_fewshot 5 \
    --batch_size 8 \
    --output_path "output/eeve-inst" \
    --wandb_args project="MMLU_pro_translated_benchmark" \
    --seed 42 --log_samples

###
rm -rf /root/.cache/huggingface/hub
###

lm_eval --model hf \
    --model_args pretrained=google/gemma-2-9b \
    --tasks mmlu_pro_health \
    --device cuda:0 \
    --num_fewshot 5 \
    --batch_size 8 \
    --output_path "output/gemma2-base" \
    --wandb_args project="MMLU_pro_translated_benchmark" \
    --seed 42 --log_samples

lm_eval --model hf \
    --model_args pretrained=google/gemma-2-9b-it \
    --tasks mmlu_pro_health \
    --device cuda:0 \
    --num_fewshot 5 \
    --batch_size 8 \
    --output_path "output/gemma2-inst" \
    --wandb_args project="MMLU_pro_translated_benchmark" \
    --seed 42 --log_samples

lm_eval --model hf \
    --model_args pretrained=ChuGyouk/gemma-2-9b-InitializedEmbeds \
    --tasks mmlu_pro_health \
    --device cuda:0 \
    --num_fewshot 5 \
    --batch_size 8 \
    --output_path "output/gemma2-gyouk" \
    --wandb_args project="MMLU_pro_translated_benchmark" \
    --seed 42 --log_samples

lm_eval --model hf \
    --model_args pretrained=Qwen/Qwen2-7B \
    --tasks mmlu_pro_health \
    --device cuda:0 \
    --num_fewshot 5 \
    --batch_size 8 \
    --output_path "output/qwen2-base" \
    --wandb_args project="MMLU_pro_translated_benchmark" \
    --seed 42 --log_samples

lm_eval --model hf \
    --model_args pretrained=Qwen/Qwen2-7B-Instruct \
    --tasks mmlu_pro_health \
    --device cuda:0 \
    --num_fewshot 5 \
    --batch_size 8 \
    --output_path "output/qwen2-inst" \
    --wandb_args project="MMLU_pro_translated_benchmark" \
    --seed 42 --log_samples

###
rm -rf /root/.cache/huggingface/hub
###

lm_eval --model hf \
    --model_args pretrained=mistralai/Mistral-Nemo-Base-2407 \
    --tasks mmlu_pro_health \
    --device cuda:0 \
    --num_fewshot 5 \
    --batch_size 8 \
    --output_path "output/nemo-base" \
    --wandb_args project="MMLU_pro_translated_benchmark" \
    --seed 42 --log_samples

lm_eval --model hf \
    --model_args pretrained=mistralai/Mistral-Nemo-Instruct-2407 \
    --tasks mmlu_pro_health \
    --device cuda:0 \
    --num_fewshot 5 \
    --batch_size 8 \
    --output_path "output/nemo-inst" \
    --wandb_args project="MMLU_pro_translated_benchmark" \
    --seed 42 --log_samples

###
rm -rf /root/.cache/huggingface/hub
###

lm_eval --model hf \
    --model_args pretrained=UCLA-AGI/Gemma-2-9B-It-SPPO-Iter3 \
    --tasks mmlu_pro_health \
    --device cuda:0 \
    --num_fewshot 5 \
    --batch_size 8 \
    --output_path "output/gemma2-sppo" \
    --wandb_args project="MMLU_pro_translated_benchmark" \
    --seed 42 --log_samples

lm_eval --model hf \
    --model_args pretrained=meta-llama/Meta-Llama-3.1-8B \
    --tasks mmlu_pro_health \
    --device cuda:0 \
    --num_fewshot 5 \
    --batch_size 8 \
    --output_path "output/llama3.1-base" \
    --wandb_args project="MMLU_pro_translated_benchmark" \
    --seed 42 --log_samples

lm_eval --model hf \
    --model_args pretrained=meta-llama/Meta-Llama-3.1-8B-Instruct \
    --tasks mmlu_pro_health \
    --device cuda:0 \
    --num_fewshot 5 \
    --batch_size 8 \
    --output_path "output/llama3.1-inst" \
    --wandb_args project="MMLU_pro_translated_benchmark" \
    --seed 42 --log_samples