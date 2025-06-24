import QtQuick
import "../BasicComponents"
import "../"
MyRectangle {
    id: dialogHeader
    height: 40
    color: MyTheme.dialogTheme.titleBarRect.color
    topLeftRadius: MyTheme.dialogTheme.titleBarRect.radius
    topRightRadius:  MyTheme.dialogTheme.titleBarRect.radius
    bottomLeftRadius: 0
    bottomRightRadius: 0
    borderColor: MyTheme.dialogTheme.titleBarRect.borderColor
    borderWidth: MyTheme.dialogTheme.titleBarRect.borderWidth
    property alias dialogTitle: titleText.text
    property real contWidth: titleText.contentWidth
    MyLabel{
        id: titleText
        text: ""
        anchors.centerIn: parent
        fontSize: MyTheme.dialogTheme.titleLabel.fontSize
        color: MyTheme.dialogTheme.titleLabel.fontColor
        isBold: MyTheme.dialogTheme.titleLabel.isBold
    }
}
