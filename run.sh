# Set up Conda env
curl --output anaconda.sh https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh

bash anaconda.sh

source ~/.bashrc

conda create -n zalo python=3.10

conda activate zalo

# Set up cuda and cuda toolkit
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb

sudo dpkg -i cuda-keyring_1.1-1_all.deb

sudo apt-get update

sudo apt-get -y install cuda-toolkit-12-3

# Pre set up env
sudo apt-get install zlib1g-dev

pip install torch cmake packaging

# Env
cd zaloai

cd llm-foundry

pip install -e ".[gpu]"

### Login Hugging Face with tokens

huggingface-cli login --token "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"

# Run train.py with config.yaml
composer train.py /home/user/zaloai/config.yaml