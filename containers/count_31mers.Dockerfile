FROM nfcore/base:1.12.1

LABEL version="1.5.x"
LABEL authors="robert.petit@emory.edu"
LABEL description="Container image containing requirements for the Bactopia count_31mers process"

COPY conda/linux/count_31mers.yml /
RUN conda env create -q -f count_31mers.yml && conda clean -y -a
ENV PATH /opt/conda/envs/bactopia-count_31mers/bin:$PATH