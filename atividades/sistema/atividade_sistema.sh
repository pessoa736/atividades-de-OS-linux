#!/bin/bash
# Script para atividade de comandos do sistema
apt-get update && apt-get install -y zip unzip cron

# 1. Exibir informações do sistema
uname -a > info_uname.txt
echo "Saída do comando uname -a registrada em info_uname.txt"

hostname -I > info_hostname.txt
echo "Saída do comando hostname -I registrada em info_hostname.txt"

# 2. Nome do kernel
kernel_name=$(uname -s)
echo "Nome do kernel: $kernel_name" | tee info_kernel.txt

# 3. Mensagem personalizada
mensagem="Bem-vindo ao sistema Linux!"
echo "$mensagem" | tee mensagem.txt

# 4. Criar arquivo de boas-vindas
cat <<EOF > boas_vindas.txt
Olá, usuário!
Seja bem-vindo ao sistema Linux.
EOF

echo "Arquivo de boas-vindas criado."

# 5. Compactar e descompactar arquivos
# Criar dois arquivos
echo "Primeiro arquivo" > arquivo1.txt
echo "Segundo arquivo" > arquivo2.txt

# Compactar em pacote.zip
zip pacote.zip arquivo1.txt arquivo2.txt

echo "Arquivos compactados em pacote.zip."

# Deletar arquivos originais
rm arquivo1.txt arquivo2.txt
echo "Arquivos originais removidos."

# Extrair arquivos do .zip
unzip pacote.zip
echo "Arquivos extraídos de pacote.zip."

# 6. Criar e remover usuário
usuario=usuario_temp
senha=Senha123
useradd "$usuario"
echo "$usuario:$senha" | chpasswd
echo "Usuário $usuario criado com senha definida."

# Verificar se foi criado
id "$usuario" && echo "Usuário $usuario existe."

# Remover usuário
deluser --remove-home "$usuario"
echo "Usuário $usuario removido."
