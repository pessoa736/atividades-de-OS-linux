# Atividade chmod

Este diretório contém um script de exemplo para praticar permissões de arquivos e usuários no Linux usando o comando `chmod`.

## Como rodar o script usando Docker Compose

1. Certifique-se de que o serviço está rodando com Docker Compose:

```bash
docker compose up
```

2. Acesse o terminal do container:

```bash
docker compose exec ubuntu-tty bash
```

3. Navegue até a pasta compartilhada:

```bash
cd /home/atividades/chmod
```

4. Dê permissão de execução ao script:

```bash
chmod +x atividade_chmod.sh
```

5. Execute o script como root (o container já inicia como root):

```bash
./atividade_chmod.sh
```

O script irá:
- Criar arquivos e pastas
- Criar um novo usuário
- Trocar o dono de um arquivo
- Alterar permissões conforme solicitado

> Observação: O script pode ser executado várias vezes, mas pode gerar avisos se os arquivos ou usuários já existirem.
