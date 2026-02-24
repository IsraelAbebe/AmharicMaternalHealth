# Amharic Maternal Health
---


```

clone https://github.com/EleutherAI/lm-evaluation-harness

cp -r AmharicMaternalHealth lm-evaluation-harness/lm-eval/tasks/.

cd lm-evaluation-harness

pip install -e .



lm_eval --model hf \
    --model_args pretrained=EleutherAI/gpt-j-6B \
    --tasks AmharicMaternalHealth_amharic_ap1 \
    --device cuda:0 \
    --batch_size 8

```
