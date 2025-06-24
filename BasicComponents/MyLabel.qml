import QtQuick
import QtQuick.Controls.Basic
import "../"
Label {
    id: myLabel
    property alias fontSize: myLabel.font.pixelSize
    property alias isBold: myLabel.font.bold
    property alias isItalic: myLabel.font.italic
    property alias isUnderlined: myLabel.font.underline
    property alias isStrikeout: myLabel.font.strikeout

    background: MyRectangle{
        borderWidth: 0
        radius: 0
        color: MyTheme.labelTheme.highlightColor
    }

    font.pixelSize: MyTheme.labelTheme.fontSize
    color: MyTheme.labelTheme.fontColor
    font.bold: MyTheme.labelTheme.isBold
    font.italic: MyTheme.labelTheme.isItalic
    font.underline: MyTheme.labelTheme.isUnderlined
    font.strikeout: MyTheme.labelTheme.isUnderlined
}
