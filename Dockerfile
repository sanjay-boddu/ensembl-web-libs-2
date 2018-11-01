FROM sanjayboddu/ensembl-web-libs:v1


RUN echo ${ENSEMBL_SOFTWARE_DEPENDENCIES_LOCATION}
WORKDIR ${ENSEMBL_SOFTWARE_DEPENDENCIES_LOCATION}/linuxbrew-automation
RUN pwd &&  ls -l

USER www

RUN source ${HOME}/.bashrc && which brew

RUN source ${HOME}/.bashrc && /bin/bash -c "time source 02-gui-bioinfo-and-internal.sh"

