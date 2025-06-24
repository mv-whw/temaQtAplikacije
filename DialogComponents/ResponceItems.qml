import QtQuick
import "../BasicComponents"
Row {
    id: responce
    property alias isYesVisible: yesBtn.visible
    property alias isNoVisible: noBtn.visible
    property alias isOkVisible: okBtn.visible
    property alias isSaveVisible: saveBtn.visible
    property alias isApplyVisible: applyBtn.visible
    property alias isRetryVisible: retryBtn.visible
    property alias isCancelVisible: cancelBtn.visible
    property real contentWidth: (yesBtn.visible? yesBtn.width+spacing:0)+
                                (noBtn.visible? noBtn.width+spacing:0)+
                                (okBtn.visible? okBtn.width+spacing:0)+
                                (saveBtn.visible? saveBtn.width+spacing:0)+
                                (applyBtn.visible? applyBtn.width+spacing:0)+
                                (retryBtn.visible? retryBtn.width+spacing:0)+
                                (cancelBtn.visible? cancelBtn.width+spacing:0)

    signal clickedOn(res:string)
    spacing: 5
    MyButton{id: yesBtn; text: qsTr("Yes"); onClicked: responce.clickedOn("yes");visible: false}
    MyButton{id: noBtn; text: qsTr("No"); onClicked: responce.clickedOn("no");visible: false}
    MyButton{id: okBtn; text: qsTr("Ok"); onClicked: responce.clickedOn("ok"); visible: true}
    MyButton{id: saveBtn; text: qsTr("Save"); onClicked: responce.clickedOn("save");visible: false}
    MyButton{id: applyBtn; text: qsTr("Apply"); onClicked: responce.clickedOn("apply");visible: false}
    MyButton{id: retryBtn; text: qsTr("Retry"); onClicked: responce.clickedOn("retry");visible: false}
    MyButton{id: cancelBtn; text: qsTr("Cancel"); onClicked: responce.clickedOn("cancel");visible: false}
}
