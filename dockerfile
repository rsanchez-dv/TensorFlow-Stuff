FROM jupyter/tensorflow-notebook:2022-06-27

#RUN apt update && apt upgrade
USER root
RUN jupyter notebook --generate-config -y
RUN pip3 install jupyterlab-github
RUN pip3 install jupyterlab_tabnine
RUN pip3 install jupyterlab-code-formatter
RUN pip3 install lckr-jupyterlab-variableinspector

RUN pip3 install jupyterlab_theme_solarized_dark
RUN conda install -c conda-forge xeus-python
RUN pip3 install jupyterlab_templates
RUN jupyter labextension install jupyterlab_templates
RUN jupyter serverextension enable --py jupyterlab_templates

RUN jupyter labextension install @telamonian/theme-darcula
RUN pip install jupyterlab_materialdarker
RUN pip install ipywidgets
RUN pip install 'jupyterlab>=3.0.0,<4.0.0a0' jupyterlab-lsp
RUN pip3 install jupyter-tensorboard
# note: you may want to use our fork of python-language-server instead (see below)
RUN pip install 'python-lsp-server[all]'