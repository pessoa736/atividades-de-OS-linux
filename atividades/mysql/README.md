
# Atividade MySQL

Este diretório contém um roteiro e um script automatizado para praticar comandos básicos de administração e manipulação de dados no MySQL Server.

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
cd /home/atividades/mysql
```

4. Dê permissão de execução ao script:

```bash
chmod +x atividade_mysql.sh
```

5. Execute o script como root (o container já inicia como root):

```bash
./atividade_mysql.sh
```

O script irá:
- Instalar o MySQL Server
- Iniciar o serviço
- Verificar se está ativo
- Conectar ao MySQL Server
- Criar um banco de dados
- Criar três tabelas
- Inserir dados nas tabelas
- Exibir os dados das tabelas

> Observação: O script pode ser executado várias vezes, mas pode gerar avisos se o banco, tabelas ou dados já existirem.
