# Organização da Atividade: Desafio de Comandos Linux

Esta atividade foi organizada para atender ao desafio proposto, seguindo as etapas abaixo:

1. **Identificação do Espaço Utilizado**
   - Utiliza-se o comando `df -h` para verificar o espaço em disco da máquina.
   - O comando `du -sh <pasta>` pode ser usado para ver o espaço ocupado por uma pasta específica.

2. **Compactação e Extração com tar**
   - Um arquivo é compactado usando `tar -cf arquivo.tar <diretório-ou-arquivo>`.
   - O conteúdo do arquivo compactado é listado com `tar -tf arquivo.tar`.
   - O arquivo é extraído com `tar -xf arquivo.tar` para testar a extração.

3. **Criação e Comparação de Arquivos**
   - Dois arquivos semelhantes são criados (por exemplo, usando `cat` ou `echo`).
   - A comparação é feita com `diff -i arquivo1 arquivo2` (ignorando diferenças de maiúsculas/minúsculas).
   - Em seguida, compara-se sem a opção `-i` para observar as diferenças sensíveis a maiúsculas/minúsculas.

4. **Relatório**
   - Todas as etapas, comandos utilizados e observações são registradas no arquivo `relatorio.txt`.

Assim, a atividade está estruturada para facilitar o aprendizado prático dos comandos Linux, promovendo a compreensão de manipulação de arquivos, compactação, extração e comparação de conteúdo.


---

## Exemplos e Observações dos Comandos Utilizados

### 1. Identificação do Espaço Utilizado
O comando `df -h` foi utilizado para mostrar o uso de espaço em disco:

```
df -h
```
Saída exemplo:
```
Filesystem      Size  Used Avail Use% Mounted on
overlay          32G   13G   18G  43% /
/dev/loop4       32G   13G   18G  43% /home/atividades
```

### 2. Compactação, Listagem e Extração com tar
Compactação:
```
tar -czvf relatorio.tar.gz relatorio.txt
```
Listagem do conteúdo:
```
tar -tvf relatorio.tar.gz
```
Extração:
```
tar -xzvf relatorio.tar.gz
```

### 3. Comparação de Arquivos e Espaço em Bytes
Para comparar arquivos binários e de texto:
```
diff relatorio.tar.gz relatorio.txt
```
Para ver o espaço ocupado em bytes:
```
du -b relatorio.tar.gz relatorio.txt
```
Saída exemplo:
```
243     relatorio.tar.gz
334     relatorio.txt
```

### 4. Observações
- O comando `du -i` não existe; para comparar ignorando maiúsculas/minúsculas, use `diff -i`.
- O comando `df -i` mostra o uso de inodes, não de espaço em bytes.
- O comando `diff` para arquivos binários apenas informa que eles diferem.

Esses exemplos e observações foram extraídos do terminal.log gerado durante a execução da atividade.
