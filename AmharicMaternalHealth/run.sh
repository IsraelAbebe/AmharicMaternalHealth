MODELS=("google/gemma-3-1b-it" "meta-llama/Llama-3.2-1B-Instruct"  "google/gemma-3-12b-it" "meta-llama/Llama-3.1-8B-Instruct" "CohereLabs/c4ai-command-r7b-12-2024" "CohereLabs/c4ai-command-r-v01")

for MODEL_NAME in "${MODELS[@]}"; do
    echo "Running evaluations for model: $MODEL_NAME"

    # Multiple Choice
    lm_eval --model hf \
            --model_args pretrained=$MODEL_NAME \
            --tasks AmharicMaternalHealth_amharic_ap1,AmharicMaternalHealth_amharic_ap2,AmharicMaternalHealth_amharic_ap3,AmharicMaternalHealth_amharic_ep1,AmharicMaternalHealth_amharic_ep2,AmharicMaternalHealth_amharic_ep3,AmharicMaternalHealth_english_ep1,AmharicMaternalHealth_english_ep2,AmharicMaternalHealth_english_ep3 \
            --device cuda:0 \
            --batch_size 1 \
            --limit 2 \
            --output_path output/choice-$MODEL_NAME \
            --verbosity DEBUG \
            --log_samples

    # Generation
    lm_eval --model hf \
            --model_args pretrained=$MODEL_NAME \
            --tasks AmharicMaternalHealth_amharic_ap1_gen,AmharicMaternalHealth_amharic_ap3_gen,AmharicMaternalHealth_amharic_ep1_gen,AmharicMaternalHealth_amharic_ep2_gen,AmharicMaternalHealth_amharic_ep3_gen,AmharicMaternalHealth_english_ep1_gen,AmharicMaternalHealth_english_ep2_gen,AmharicMaternalHealth_english_ep3_gen \
            --device cuda:0 \
            --batch_size 1 \
            --limit 2 \
            --output_path output/generation-$MODEL_NAME \
            --verbosity DEBUG \
            --log_samples
done
