data_dir="/home/daniel094144/data_folder/"
cache_dir="/home/daniel094144/Daniel/BERT-analysis/dataset/"
CUDA_VISIBLE_DEVICES=0 python run_xnli.py --data_dir ${data_dir} \
    --model_type bert \
    --model_name_or_path bert-base-chinese \
    --output_dir ../output/try \
    --cache_dir ${cache_dir} \
    --do_train \
    --do_eval \
    --evaluate_during_training \
    --do_lower_case \
    --warmup_steps 500 \
    --fp16 \
    --language zh \
    --overwrite_output_dir \
    --per_gpu_train_batch_size 96 \
    --per_gpu_eval_batch_size 96 \
    --save_step 1000 \
    --logging_steps 1000

