FROM ubuntu:24.04

# Instala utilitários básicos (opcional)
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    sudo \
    vim \
    less \
    iputils-ping \
    net-tools \
    htop \
    && rm -rf /var/lib/apt/lists/* 

# Define o comando padrão para iniciar no modo TTY interativo
CMD ["/bin/bash"]