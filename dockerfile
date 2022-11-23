FROM jupyter/tensorflow-notebook:tensorflow-2.8.1

#RUN apt update && apt upgrade
USER root
RUN jupyter notebook --generate-config -y

# MAC M1 CONFIGS
RUN conda install -c apple tensorflow-deps -y
RUN pip3 install tensorflow-macos

RUN pip install tensorflow-metal 
RUN conda install -c conda-forge jupyter jupyterlab -y



# RUN pip3 install jupyterlab-github \
#     jupyterlab_tabnine \
#     jupyterlab-code-formatter \
#     lckr-jupyterlab-variableinspector \
#     jupyterlab_theme_solarized_dark \
#     jupyterlab_templates \
#     ipywidgets \
#     jupyterlab_materialdarker \
#     'jupyterlab>=3.0.0,<4.0.0a0' jupyterlab-lsp \
#     'python-lsp-server[all]' \
#     jupyterlab-system-monitor \
#     "jupyterlab-kite>=2.0.2" \
#     lckr-jupyterlab-variableinspector \
#     jupyterlab_execute_time

# RUN conda install -c conda-forge xeus-python
# RUN conda install -c conda-forge ipympl
# RUN conda install -c plotly plotly=5.9.0
# RUN conda install xeus-python -c conda-forge

# RUN jupyter labextension install jupyterlab_templates
# RUN jupyter serverextension enable --py jupyterlab_templates
# RUN jupyter labextension install @telamonian/theme-darcula

#RUN pip3 install jupyter-tensorboard
# # note: you may want to use our fork of python-language-server instead (see below)

