import QtQuick
import QtQuick.Controls.Basic
import "../"

Column {
    id: myProgressCol
    property alias detailsInfoText: detailsInfo.text
    property alias progressValue: progBar.value
    Item{
        width: parent.width
        height: progBar.height
        ProgressBar{
            id: progBar
            from: 0
            to: 100
            width: parent.width-54
            background: MyRectangle{
                color: MyTheme.progressBarTheme.unfinishedRect.color
                radius: MyTheme.progressBarTheme.unfinishedRect.radius
                implicitWidth: 200
                implicitHeight: 40
            }
            contentItem:Item{
                implicitWidth: 200
                implicitHeight: 40
                MyRectangle{
                    width: progBar.visualPosition*parent.width
                    height: parent.height
                    radius: MyTheme.progressBarTheme.finishedRectValue.radius
                    color: MyTheme.progressBarTheme.finishedRectValue.color
                }
            }

        }
        MyLabel{
            id: progressProcent
            text: progBar.value+"%"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            color: MyTheme.progressBarTheme.finishedValue.fontColor
            fontSize: MyTheme.progressBarTheme.finishedValue.fontSize
            isBold: MyTheme.progressBarTheme.finishedValue.isBold
        }
    }
    MyLabel{
        id: detailsInfo
        wrapMode: MyLabel.WordWrap
        width: parent.width
        fontSize: MyTheme.progressBarTheme.detailsInfo.fontSize
        color: MyTheme.progressBarTheme.detailsInfo.fontColor
        isBold: MyTheme.progressBarTheme.detailsInfo.isBold
        isItalic: MyTheme.progressBarTheme.detailsInfo.isItalic
    }
}
