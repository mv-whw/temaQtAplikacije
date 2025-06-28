import QtQuick
import "../"

MyRectangle{
    color: "transparent"
    borderWidth: (xSign.isBold? 2:1)* MyTheme.rectangleTheme.borderWidth
    width: xSign.contentWidth+20
    height: parent.height
    signal clickedOn()
    MyLabel{
        id: xSign
        anchors.centerIn: parent
        text: "X"
    }
    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            xSign.isBold=true
        }
        onExited: {
            xSign.isBold=false
        }
        onClicked: parent.clickedOn()
    }
}
