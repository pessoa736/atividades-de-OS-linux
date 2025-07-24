# Atividades de Sistemas Operacionais II

Este repositório reúne atividades práticas da disciplina Sistemas Operacionais II, utilizando Linux, Docker e comandos de terminal para promover o aprendizado prático de administração de sistemas.

## Estrutura do Repositório

- **atividades/**: Diretório principal das atividades práticas, cada uma em sua própria subpasta:
  - **chmod/**: Exercícios sobre permissões de arquivos e usuários, com script automatizado e instruções.
  - **mysql/**: Atividade de instalação, uso e manipulação de banco de dados MySQL, com script e README.
  - **sistema/**: Comandos de sistema, manipulação de arquivos, usuários e compactação, com script e README.
  - **atividade de compreção/**: Atividade sobre compactação, extração e comparação de arquivos.
  - **ativdade do htop/**: Pesquisa sobre sinais e processos usando o comando htop.

- **docker-compose.yaml**: Arquivo de configuração para subir o ambiente Ubuntu via Docker Compose, com volumes compartilhados para facilitar o acesso aos arquivos das atividades.
- **dockefile**: Dockerfile para criar a imagem base Ubuntu customizada com utilitários essenciais.

## Como rodar o ambiente

1. Certifique-se de ter Docker e Docker Compose instalados.
2. No terminal, execute:
   ```bash
   docker compose up
   ```
3. Acesse o terminal do container:
   ```bash
   docker compose exec ubuntu-tty bash
   ```
4. Navegue até a pasta desejada em `/home/atividades` e siga as instruções do README de cada atividade.

## Sobre as Atividades

Cada atividade possui um README próprio explicando o objetivo, comandos utilizados e como executar os scripts. Os scripts automatizam tarefas como:
- Manipulação de permissões (chmod)
- Instalação e uso de MySQL
- Comandos de sistema, manipulação de arquivos, compactação e usuários
- Compactação, extração e comparação de arquivos
- Pesquisa sobre sinais de processos no Linux

## Objetivo

O objetivo deste repositório é proporcionar um ambiente controlado e prático para o estudo de comandos e conceitos fundamentais de sistemas operacionais Linux, promovendo o aprendizado ativo e a experimentação.
