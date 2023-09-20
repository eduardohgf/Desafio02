# Desafio02

2. Criar um software baseado em Qt com interface gráfica usando QML.

- Requisitos

a) Tela Inicial - deve conter 02 botões - "Receber" - "Sair/Encerrar"

a.0) O usuário deve ser capaz de voltar para a tela principal que exibe os dois botões

a.1) O botão "Sair/Encerrar" encerra o software

 
b) Receber - [Pode ser implementado em DBUS ou ZeroMQ]

b.0) O software deve ir para uma nova tela em que haja 02 elementos:

b.0.1) Entrada de texto: Nome do tópico a ser ouvido/subscrito

b.0.2) Exibidor de text: conteúdo que foi recebido no tópico

b.1) O conteúdo a ser recebido, deve ser lido pela classe c++ e disponibilizado na interface QML

b.2) É essencial a integração entre C++ e QML para a execução dessa atividade

 
c) Lista de Arquivos / Estrutura do Projeto

c.0) Segue abaixo os arquivos esperados, é preciso deixar claro que é apenas uma sugestão, podendo o resultado final ter mais classes ou menos classes a depender da arquitetura de implementação.

c.1) A estrutura de arquivos abaixo não precisa ser seguida rigorosamente.

- recebe.pro - caso usar qmake

- CMakeLists.txt - caso usar cmake

- main.cpp - arquivo principal cpp

- main.qml - arquivo principal qml - Recomenda-se o uso do componente StackView para a alternância entre as diversas telas da aplicação

- Principal.qml (menu principal com 02 botões)

- Recebe.qml (tela com entrada para tópico a ser recebido/subscrito e exibidor de texto do conteúdo recebido)

- RecebeComando.h/RecebeComando.cpp (classe c++ responsavel por fazer IPC - Inter Process Communication - pode-se usar zeromq ou dbus)
