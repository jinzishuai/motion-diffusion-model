# Set up Locally on Mac M2

- create conda env
```
conda create --name mdm python=3.11
conda activate mdm
```
- install python packages with pip
```
pip install -r requirements.txt
```
- download [en_core_web_sm](https://spacy.io/models/en#en_core_web_sm)
```
python -m spacy download en_core_web_sm
```
- install OpenAI [CLIP](https://github.com/openai/CLIP)
```pip install git+https://github.com/openai/CLIP.git
```
- install gdown: `pip install gdown`
- download models
```
bash prepare/download_smpl_files.sh
bash prepare/download_glove.sh
bash prepare/download_t2m_evaluators.sh
```
this should unzip the t2m.zip as a `t2m` folder at the top of the repo folder.
- download pretrained model and save in the `save` folder
- download the [HumanML3D](https://github.com/EricGuo5513/HumanML3D) data
```
╭─   ~/src/aitok-ai/motion-diffusion-model/dataset   mac ⇡1 !2 ?9 ·············································  mdm  17:53:59
╰─❯ ln -s ../../text-to-motion/dataset/HumanML3D .
```

# Set up dev container

