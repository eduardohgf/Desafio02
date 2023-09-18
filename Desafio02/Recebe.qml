import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.3
import QtQuick.Layouts 1.3

Rectangle {
    id:tenvia
    width: 640
    height: 480
    color: "gray"
    Button{ // Botão Voltar
        id:bvoltar
        text:"Voltar"
        anchors.top: parent.top
        anchors.left: parent.left
        onClicked: stackView.push("Principal.qml")
    }
    Column{
        id:coluna
        anchors.centerIn: parent
        spacing: 5
        Rectangle{
            id:menu
            width: 350
            height: 250
            color:"darkgray"
            anchors.centerIn: parent

            ColumnLayout{
                id:boxtext
                anchors.fill: parent
                Text{
                    id:topico
                    text:" Tópico:"
                }
                Rectangle {
                    id:areati
                    width: boxtext.width
                    height: topico.height +3
                    TextInput{
                        anchors.fill: parent
                    }
                }
                Text{
                    id:conteudo
                    text:" Conteúdo Recebido:"
                }
                Rectangle {
                    id:areacont
                    width: boxtext.width
                    height: conteudo.height *8
                    color:"#D3D3D3"
                    TextArea{
                        id:textArea
                        anchors.fill: parent
                        readOnly: true
                        text:"Teste"
                    }
                }
                Button { //Botão ReceberComando
                    id:brecebe
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    text: "Receber"
                    onClicked: {
                        text:'teste'
                    }
                }
            }
        }
    }
}
