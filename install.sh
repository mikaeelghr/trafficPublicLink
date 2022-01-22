#!/bin/sh

sudo apt-get update -y
sudo apt-get install -y apt-utils git curl ca-certificates bzip2 cmake tree htop bmon iotop g++ ibglib2.0-0 libsm6 libxext6 libxrender-dev python3.6 python3-pip

git clone git@github.com:Sharif-Embedded-system/final_project-ghorbani-kalbasi-1.git

cd final_project-ghorbani-kalbasi-1/traffic-analysis

python3.6 -m venv venv

./venv/bin/python -m pip install -r requirements.txt

./venv/bin/python setup.py build develop

cd ..

git clone https://github.com/cocodataset/cocoapi.git

cd cocoapi/PythonAPI

../../traffic-analysis/venv/bin/python setup.py build_ext install


export PATH="$HOME/.local/bin:$PATH"
cd ../..
cd "traffic-analysis/traffic/models/R-50-FPN-1280x512-CustomAnchors-FocalLoss-CascadeMax"
gdown --id 1BHMeLMovI7AyrYuboyldaOv1XKlrWiZj


