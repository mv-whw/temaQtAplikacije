import QtQuick
import QtQuick.Controls.Basic
import "../"

Button {
    id: myButton

    opacity: myButton.enabled? 1.0:0.3

    background: MyRectangle{
        implicitWidth: 100
        implicitHeight: 40
        color: myButton.flat? "transparent": (myButton.down? MyTheme.buttonTheme.clickedColor: (myButton.hovered? MyTheme.buttonTheme.hoveredColor: MyTheme.buttonTheme.visualRect.color))
        borderColor: MyTheme.buttonTheme.visualRect.borderColor
        borderWidth: MyTheme.buttonTheme.visualRect.borderWidth
        radius: MyTheme.buttonTheme.visualRect.radius
    }

    contentItem: MyLabel{
        text: myButton.text
        fontSize: MyTheme.buttonTheme.visualTitle.fontSize
        color: myButton.flat? (myButton.down? MyTheme.buttonTheme.clickedColor: (myButton.hovered? MyTheme.buttonTheme.hoveredColor: MyTheme.buttonTheme.visualRect.color)): MyTheme.buttonTheme.visualTitle.fontColor
        isBold: MyTheme.buttonTheme.visualTitle.isBold
        isItalic: MyTheme.buttonTheme.visualTitle.isItalic
        isUnderlined: MyTheme.buttonTheme.visualTitle.isUnderlined
        isStrikeout: MyTheme.buttonTheme.visualTitle.isStrikeout
        horizontalAlignment: MyLabel.AlignHCenter
        verticalAlignment: MyLabel.AlignVCenter
        elide: MyLabel.ElideRight
    }
}
