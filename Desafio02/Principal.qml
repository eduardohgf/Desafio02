import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15

// Tela Inicial com 3 Botões

Rectangle {
    width: 640
    height: 480
    color:"gray"

    // Centraliza os Botões
    RowLayout {
        anchors.centerIn: parent

        Button{ // Botão Recebe Comando
            id:trecebecomando
            text:"Receber Comando"
            onClicked: stackView.push("Recebe.qml")
        }

        Button { // Botão Sair do APP
            id: bsair
            text: "Sair/Encerrar"
            onClicked: Qt.quit()
        }
    }
}
