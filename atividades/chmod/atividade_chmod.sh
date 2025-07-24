#!/bin/bash
# Script para atividade de permissões com chmod

arquivo=meuarquivo.txt
touch "$arquivo"

echo "Arquivo $arquivo criado."

usuario=usuariochmod
useradd "$usuario"
echo "Usuário $usuario criado."

chown "$usuario" "$arquivo"
echo "Dono do arquivo $arquivo alterado para $usuario."

pasta=minhapasta
mkdir "$pasta"
echo "Pasta $pasta criada."

arquivo2="$pasta/arquivo2.txt"
touch "$arquivo2"
echo "Arquivo $arquivo2 criado."

# Dono: todas as permissões (rwx)
# Grupo: ler e executar (r-x)
# Outros: ler (r--)
chmod 754 "$arquivo2"
echo "Permissões do arquivo $arquivo2 alteradas para 754 (dono: rwx, grupo: r-x, outros: r--)."
