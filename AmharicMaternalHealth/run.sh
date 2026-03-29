
MODELS=( "meta-llama/Llama-3.2-1B-Instruct" "google/gemma-3-12b-it" "google/gemma-3-27b-it" "meta-llama/Llama-3.1-70B-Instruct" "meta-llama/Llama-3.1-8B-Instruct" "McGill-NLP/AfriqueQwen-14B" "google/medgemma-27b-it")

for MODEL_NAME in "${MODELS[@]}"; do
    echo "Running evaluations for model: $MODEL_NAME"

    # Multiple Choice
    CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} lm_eval --model hf \
            --model_args pretrained=$MODEL_NAME,parallelize=True \
            --tasks AmharicMaternalHealth_amharic_ap1,AmharicMaternalHealth_amharic_ap2,AmharicMaternalHealth_amharic_ap3,AmharicMaternalHealth_amharic_ep1,AmharicMaternalHealth_amharic_ep2,AmharicMaternalHealth_amharic_ep3,AmharicMaternalHealth_english_ep1,AmharicMaternalHealth_english_ep2,AmharicMaternalHealth_english_ep3 \
            --batch_size 1 \
            --output_path output-amharicsotryqa/choice-$MODEL_NAME \
            --verbosity DEBUG \
            --log_samples \
            --apply_chat_template

    # Generation
    CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} lm_eval --model hf \
            --model_args pretrained=$MODEL_NAME,parallelize=True \
            --tasks AmharicMaternalHealth_amharic_ap1_gen,AmharicMaternalHealth_amharic_ap3_gen,AmharicMaternalHealth_amharic_ep1_gen,AmharicMaternalHealth_amharic_ep2_gen,AmharicMaternalHealth_amharic_ep3_gen,AmharicMaternalHealth_english_ep1_gen,AmharicMaternalHealth_english_ep2_gen,AmharicMaternalHealth_english_ep3_gen \
            --batch_size 1 \
            --output_path output-amharicsotryqa/generation-$MODEL_NAME \
            --verbosity DEBUG \
            --log_samples \
            --apply_chat_template
    cp -r output-amharicsotryqa/ /home/azime/localization-evaluation/.

done





# |AmharicMaternalHealth_amharic_ap1                                                     |lm_eval/tasks/AmharicMaternalHealth/choice/amh/amh_p1.yaml                                                                                                      |multiple_choice      |
# |AmharicMaternalHealth_amharic_ap1_gen                                                 |lm_eval/tasks/AmharicMaternalHealth/generation/amh/amh_p1.yaml                                                                                                  |generate_until       |
# |AmharicMaternalHealth_amharic_ap2                                                     |lm_eval/tasks/AmharicMaternalHealth/choice/amh/amh_p2.yaml                                                                                                      |multiple_choice      |
# |AmharicMaternalHealth_amharic_ap3                                                     |lm_eval/tasks/AmharicMaternalHealth/choice/amh/amh_p3.yaml                                                                                                      |multiple_choice      |
# |AmharicMaternalHealth_amharic_ap3_gen                                                 |lm_eval/tasks/AmharicMaternalHealth/generation/amh/amh_p3.yaml                                                                                                  |generate_until       |
# |AmharicMaternalHealth_amharic_ep1                                                     |lm_eval/tasks/AmharicMaternalHealth/choice/eng/amh_p1.yaml                                                                                                      |multiple_choice      |
# |AmharicMaternalHealth_amharic_ep1_gen                                                 |lm_eval/tasks/AmharicMaternalHealth/generation/eng/amh_p1.yaml                                                                                                  |generate_until       |
# |AmharicMaternalHealth_amharic_ep2                                                     |lm_eval/tasks/AmharicMaternalHealth/choice/eng/amh_p2.yaml                                                                                                      |multiple_choice      |
# |AmharicMaternalHealth_amharic_ep2_gen                                                 |lm_eval/tasks/AmharicMaternalHealth/generation/eng/amh_p2.yaml                                                                                                  |generate_until       |
# |AmharicMaternalHealth_amharic_ep3                                                     |lm_eval/tasks/AmharicMaternalHealth/choice/eng/amh_p3.yaml                                                                                                      |multiple_choice      |
# |AmharicMaternalHealth_amharic_ep3_gen                                                 |lm_eval/tasks/AmharicMaternalHealth/generation/eng/amh_p3.yaml                                                                                                  |generate_until       |
# |AmharicMaternalHealth_english_ep1                                                     |lm_eval/tasks/AmharicMaternalHealth/choice/eng/eng_p1.yaml                                                                                                      |multiple_choice      |
# |AmharicMaternalHealth_english_ep1_gen                                                 |lm_eval/tasks/AmharicMaternalHealth/generation/eng/eng_p1.yaml                                                                                                  |generate_until       |
# |AmharicMaternalHealth_english_ep2                                                     |lm_eval/tasks/AmharicMaternalHealth/choice/eng/eng_p2.yaml                                                                                                      |multiple_choice      |
# |AmharicMaternalHealth_english_ep2_gen                                                 |lm_eval/tasks/AmharicMaternalHealth/generation/eng/eng_p2.yaml                                                                                                  |generate_until       |
# |AmharicMaternalHealth_english_ep3                                                     |lm_eval/tasks/AmharicMaternalHealth/choice/eng/eng_p3.yaml                                                                                                      |multiple_choice      |
# |AmharicMaternalHealth_english_ep3_gen   
