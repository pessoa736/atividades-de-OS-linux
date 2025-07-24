# Atividade Sistema

Este diretório contém um roteiro e um script automatizado para praticar comandos básicos de administração e manipulação de arquivos no Linux.

## Como rodar a atividade usando Docker Compose

1. Certifique-se de que o serviço está rodando com Docker Compose:

```bash
docker compose up
```

2. Acesse o terminal do container:

```bash
docker compose exec ubuntu-tty bash
```

3. Navegue até a pasta da atividade:

```bash
cd /home/atividades/sistema
```

4. Dê permissão de execução ao script:

```bash
chmod +x atividade_sistema.sh
```

5. Execute o script como root (o container já inicia como root):

```bash
./atividade_sistema.sh
```

O script irá:
- Exibir informações do sistema (uname -a, hostname -I)
- Registrar o nome do kernel
- Exibir uma mensagem personalizada
- Criar um arquivo de boas-vindas
- Compactar e descompactar arquivos
- Criar dois arquivos, compactá-los em pacote.zip, deletar os originais e extrair do zip
- Criar um novo usuário, definir senha, verificar existência e remover o usuário

> Observação: O script pode ser executado várias vezes, mas pode gerar avisos se arquivos ou usuários já existirem.
