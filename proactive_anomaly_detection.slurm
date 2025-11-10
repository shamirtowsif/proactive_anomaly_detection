#!/bin/bash
#SBATCH --job-name=proactive_anomaly_detection
#SBATCH --partition=sooner_gpu_test
#SBATCH --container=el9hw
#SBATCH --gres=gpu:1
#SBATCH --output=output.log

module load python
module load pytorch
module load cuda
module load cudnn

python train.py
