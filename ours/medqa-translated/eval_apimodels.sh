export OPENAI_API_KEY=YOUR_KEY_HERE

lm_eval --model openai-chat-completions \
    --model_args model=gpt-4o-mini-2024-07-18 \
    --tasks medqa \
    --num_fewshot 5 \
    --output_path "output/gpt4o-mini" \
    --seed 42 --log_samples

lm_eval --model openai-chat-completions \
    --model_args model=gpt-4o-2024-05-13 \
    --tasks medqa \
    --num_fewshot 5 \
    --output_path "output/gpt4o" \
    --seed 42 --log_samples
