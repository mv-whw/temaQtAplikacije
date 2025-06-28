import QtQuick
import "./BasicComponents"

MyApplicationWindow {
    id: app
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Column{
        spacing: 10
        MyLabel{text: "test: 29.6.2025/v3"}
        MyButton{text: "open dialog"; onClicked: {tt.open();txtArea.textAreaFocus=false}}
        MyTextArea{id: txtArea;width: 280; text: "message";}
    }
    MyMessageDialog{id: tt; dialogTitle: "test dialog"; messageText: txtArea.text}
}
