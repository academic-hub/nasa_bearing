FROM jupyter/scipy-notebook:2ce7c06a61a1

# create user with a home directory
ARG NB_USER
ARG NB_UID
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

RUN pwd && ls -alt
# add . ${HOME}

WORKDIR ${HOME}
USER ${USER}
RUN git clone https://github.com/cfoisy-osisoft/nasa_bearing.git
WORKDIR ${HOME}/nasa_bearing
