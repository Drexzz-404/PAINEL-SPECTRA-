#!/bin/bash

# Função para exibir o título com ASCII art
exibir_titulo() {
    clear
    echo "============================================"
    echo "     ____  ____  ______ _______ _______     "
    echo "    / ___||  _ \| ____|__  / _ \_   _| |    "
    echo "    \___ \| | | |  _|   / / | | || | | |    "
    echo "     ___) | |_| | |___ / /| |_| || | | |___ "
    echo "    |____/|____/|_____/_/  \___/ |_| |_____|"
    echo "                                            "
    echo " [Painel de Inteligência e Domínio Cibernético]"
    echo "============================================"
}

# Função para aguardar Enter
pausar() {
    echo
    read -p "Pressione Enter para continuar..."
}

# Função principal
menu_principal() {
    while true; do
        exibir_titulo
        echo
        echo "1. História"
        echo "2. Termux - Básico"
        echo "3. Python - Introdução"
        echo "4. Pentest (sem root)"
        echo "5. Sair"
        echo
        read -p "Escolha uma opção: " opcao
        case $opcao in
            1) menu_historia ;;
            2) mostrar_arquivo "Termux - Introdução" "$termux" ;;
            3) mostrar_arquivo "Python - Introdução" "$python" ;;
            4) mostrar_arquivo "Pentest (sem root)" "$pentest" ;;
            5) echo "Saindo..."; exit ;;
            *) echo "Opção inválida!"; pausar ;;
        esac
    done
}

# Função para mostrar o conteúdo de um módulo
mostrar_arquivo() {
    clear
    echo "======== $1 ========"
    echo
    echo "$2"
    pausar
}

# Submenu História
menu_historia() {
    while true; do
        clear
        echo "===================="
        echo "   [Módulo HISTÓRIA]"
        echo "===================="
        echo "1. Computadores 1 - História"
        echo "2. Tecnologia"
        echo "3. Redes"
        echo "4. Computadores 2 - Conceitos"
        echo "5. Computadores 3 - Sistemas"
        echo "6. Primeiras aplicações Web"
        echo "7. Hacktivismo"
        echo "0. Voltar"
        echo
        read -p "Escolha uma opção: " opcao
        case $opcao in
            1) mostrar_arquivo "Computadores 1 - História" "$computadores1" ;;
            2) mostrar_arquivo "Tecnologia" "$tecnologia" ;;
            3) mostrar_arquivo "Redes" "$redes" ;;
            4) mostrar_arquivo "Computadores 2 - Conceitos" "$computadores2" ;;
            5) mostrar_arquivo "Computadores 3 - Sistemas" "$computadores3" ;;
            6) mostrar_arquivo "Primeiras aplicações Web" "$web" ;;
            7) mostrar_arquivo "Hacktivismo" "$hacktivismo" ;;
            0) return ;;
            *) echo "Opção inválida!"; pausar ;;
        esac
    done
}

# Textos dos módulos
computadores1="A história dos computadores remonta ao século XIX, com Charles Babbage, criador da Máquina Analítica. No século XX, Alan Turing propôs a Máquina Universal. Durante a Segunda Guerra Mundial surgiram computadores como Colossus e ENIAC. A evolução seguiu com os transistores, circuitos integrados e microprocessadores."

tecnologia="Tecnologia é a aplicação do conhecimento para resolver problemas. Desde a criação de ferramentas na pré-história até a era digital, ela transformou a sociedade. Destacam-se a Revolução Industrial, a internet e a inteligência artificial."

redes="As redes de computadores surgiram com a ARPANET em 1969, evoluindo para a Internet moderna. Usam protocolos como TCP/IP para comunicação. Existem redes locais (LAN), metropolitanas (MAN) e de longa distância (WAN)."

computadores2="Conceitos fundamentais envolvem hardware (CPU, RAM, HD), software (sistemas operacionais, aplicativos), dados (bits, bytes) e lógica computacional (códigos binários, algoritmos). Computadores processam entradas e produzem saídas."

computadores3="Sistemas computacionais incluem o sistema operacional, drivers, aplicativos e serviços conectados. Arquiteturas variam de desktops e servidores a sistemas embarcados e distribuídos, como computação em nuvem."

web="As primeiras aplicações web surgiram nos anos 90 com HTML estático. Depois, vieram linguagens como JavaScript e PHP, permitindo interatividade. Hoje, temos aplicações como redes sociais, e-commerce e plataformas em tempo real."

hacktivismo="Hacktivismo é o uso de técnicas de hacking para fins políticos e sociais. Grupos como Anonymous realizam ataques e protestos digitais contra governos e corporações, promovendo liberdade de informação e justiça social."

termux="Termux é um terminal Linux para Android. Permite usar pacotes como git, python, curl, nmap e ssh. Ideal para aprender comandos Linux, programar scripts, automatizar tarefas e até fazer análise de segurança."

python="Python é uma linguagem de programação fácil de aprender e poderosa. Usada em automação, web, ciência de dados e segurança. Exemplo:

print('Olá, mundo!')

Tem bibliotecas como requests, socket e hashlib."

pentest="Pentest é a prática de testar sistemas à procura de falhas de segurança. No Termux, sem root, você pode usar ferramentas como nmap (varredura de rede), whois (dados de domínios), Hydra (força bruta), OSINT e scripts personalizados."

# Iniciar menu principal
menu_principal
