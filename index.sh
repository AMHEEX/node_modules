#!/bin/bash

# Define a URL do repositório
REPO_URL="https://github.com/AMHEEX/node_modules.git"

# Define a pasta/arquivo de destino (extrai o nome do repositório, ex: node_modules)
FOLDER_NAME=$(basename "$REPO_URL" .git)

# Função para clonar/instalar o repositório
install_repo() {
    echo "Instalando repositório de: $REPO_URL..."
    git clone "$REPO_URL"
    if [ $? -eq 0 ]; then
        echo "Instalação concluída com sucesso!"
    else
        echo "Ocorreu um erro ao tentar clonar o repositório."
    fi
}

# Verifica se a pasta/repositório já existe no diretório atual
if [ -d "$FOLDER_NAME" ]; then
    echo "O repositório/diretório '$FOLDER_NAME' já existe localmente."
    read -p "Deseja reinstalar? (s/n): " resposta

    # Converte a resposta para letra minúscula
    resposta=$(echo "$resposta" | tr '[:upper:]' '[:lower:]')

    if [ "$resposta" = "s" ]; then
        echo "Removendo instalação existente..."
        rm -rf "$FOLDER_NAME"
        install_repo
    elif [ "$resposta" = "n" ]; then
        echo "Operação ignorada. Nenhuma alteração feita."
    else
        echo "Resposta inválida. Operação cancelada."
    fi
else
    echo "Repositório não encontrado no diretório atual."
    install_repo
fi
