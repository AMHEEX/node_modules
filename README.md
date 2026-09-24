🇧🇷 NODE-MODULES — Módulo WhatsApp via Termux

📌 Sobre o projeto

O NODE-MODULES é um módulo de WhatsApp desenvolvido para Node.js + Baileys, com foco em execução leve, rápida e eficiente diretamente no Termux.

O projeto foi pensado para funcionar de forma nativa em dispositivos Android, evitando navegadores automatizados e ferramentas pesadas. A estrutura utiliza o protocolo da biblioteca "@whiskeysockets/baileys" para realizar a conexão com o WhatsApp.

"NODE_MODULES" (/icon.png)

---

🚀 Principais características

🔌 Conexão nativa com WhatsApp

O NODE-MODULES utiliza a biblioteca:

@whiskeysockets/baileys

A comunicação é realizada diretamente pelo Node.js, sem depender de navegador gráfico ou ferramentas como Puppeteer.

🔐 Duas formas de autenticação

O módulo oferece diferentes métodos para estabelecer a sessão:

- 📱 QR Code diretamente pelo terminal.
- 🔢 Código de Pareamento (Pairing Code) para vincular o dispositivo.

Isso permite escolher o método de login mais conveniente para cada ambiente.

⚡ Estrutura ultraleve

O projeto foi desenvolvido para reduzir o consumo de recursos do dispositivo.

A arquitetura evita a necessidade de:

- Navegadores completos;
- Puppeteer;
- PHP;
- Compiladores pesados;
- Interfaces gráficas desnecessárias.

O objetivo é manter a execução concentrada no Node.js + Baileys.

📱 Compatível com Termux

O NODE-MODULES foi projetado especialmente para execução no Termux, permitindo utilizar um ambiente Node.js diretamente no Android.

A execução pode ser realizada a partir do armazenamento interno do dispositivo, por exemplo:

/sdcard/

🧩 Instalação simplificada

A configuração foi concentrada em um script de instalação, reduzindo a quantidade de comandos necessários para preparar o ambiente.

As principais ferramentas necessárias são:

- "nodejs"
- "git"
- "curl"
- Termux

---

📦 Estrutura geral

O projeto utiliza uma arquitetura baseada em Node.js, com o Baileys responsável pela comunicação com o WhatsApp.

Fluxo simplificado:

┌─────────────────────┐
│       Termux        │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│       Node.js       │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│      Baileys        │
│ @whiskeysockets/    │
│      baileys        │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│      WhatsApp       │
└─────────────────────┘

---

🛠️ Requisitos

Antes de executar o projeto, o ambiente precisa possuir:

Android
Termux
Node.js
Git
Curl
Conexão com a Internet

O script de instalação automatiza boa parte dessa preparação.

---

📥 Instalação — Termux

A instalação pode ser realizada com um único comando:

bash <(curl -s https://raw.githubusercontent.com/AMHEEX/node_modules/main/index.sh)

O script é responsável por iniciar o processo de configuração e instalação do ambiente necessário para o NODE-MODULES.

---

☁️ Execução no Google Colab

O projeto também pode ser iniciado em um ambiente Google Colab utilizando:

!bash <(curl -s https://raw.githubusercontent.com/AMHEEX/node_modules/main/index.sh)

Isso permite utilizar o script em um ambiente Linux remoto disponibilizado pelo Colab.

---

🔑 Métodos de conexão

Após a instalação, o módulo pode disponibilizar métodos de autenticação diferentes conforme a configuração implementada:

QR Code

O terminal apresenta um QR Code que pode ser utilizado para vincular a sessão.

Pairing Code

Também pode ser utilizado um código de pareamento para realizar a vinculação sem precisar escanear um QR Code.

---

⚙️ Tecnologias

O projeto utiliza principalmente:

Tecnologia| Função
🇯🇸 Node.js| Ambiente de execução
🟢 Baileys| Comunicação com WhatsApp
📱 Termux| Ambiente Android
🐙 Git| Gerenciamento/obtenção do código
🌐 Curl| Download do instalador
☁️ Google Colab| Ambiente alternativo de execução

---

🎯 Objetivo

O objetivo do NODE-MODULES é disponibilizar uma base de WhatsApp baseada em Node.js + Baileys, com uma instalação simples e uma estrutura adequada para ambientes com recursos limitados, principalmente dispositivos Android executando Termux.

A proposta é proporcionar:

- ⚡ Inicialização rápida;
- 📱 Execução diretamente no Android;
- 🧠 Baixo uso de recursos;
- 🔌 Conexão direta através do Baileys;
- 🔐 QR Code e Pairing Code;
- 🛠️ Instalação automatizada;
- ☁️ Possibilidade de execução em ambientes como Google Colab.

---

📜 Instalação rápida

Termux

bash <(curl -s https://raw.githubusercontent.com/AMHEEX/node_modules/main/index.sh)

Google Colab

!bash <(curl -s https://raw.githubusercontent.com/AMHEEX/node_modules/main/index.sh)

---

🇧🇷 NODE-MODULES

Node.js + Baileys + Termux

Um módulo desenvolvido para oferecer uma experiência de execução de WhatsApp baseada em Node.js, com estrutura leve, autenticação por QR Code ou Pairing Code e instalação automatizada.

«⚠️ Observação: o uso do módulo deve respeitar os termos de serviço do WhatsApp e as leis aplicáveis. O projeto é destinado a automação e desenvolvimento em ambientes autorizados.»