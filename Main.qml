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
        /*MyLabel{text: "viewWidth: "+app.width}
        MyLabel{text: "test: 17.6.2025/0.0.0.0"}
        MyProgressBar{width: 360; progressValue: 100; detailsInfoText: "instaling info into the process of data stream with function of the theme"}
        MyButton{text: "odpri dialog"; onClicked:tt.open()}*/
        MyButton{text: "odpri dialog"; onClicked:tt.open()}
        //MyTextArea{id: txtArea;width: 280; text: "spremeni ta text in sprememba bo vidna v dialogu"; onEditingFinished: tt.messageText=txtArea.text}
    }

    MyColorChooserDialog{id: tt;x: 0;y:0;oldColor: "red";onOpened: console.log("x:"+x+"; y:"+y+" wid:"+width+"/ hei:"+height)}
}
