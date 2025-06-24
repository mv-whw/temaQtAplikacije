import QtQuick 2.15
import QtQuick.Controls.Basic
import "../"
GroupBox {
    id: myGroupBox
    padding: MyTheme.groupBoxTheme.frameRect.padding
    spacing: MyTheme.groupBoxTheme.frameRect.spacing

    background: MyRectangle{
        color: MyTheme.groupBoxTheme.frameRect.color
        borderWidth: MyTheme.groupBoxTheme.frameRect.borderWidth
        borderColor: MyTheme.groupBoxTheme.frameRect.borderColor
        radius: MyTheme.groupBoxTheme.frameRect.radius
    }

    label: MyLabel{
        fontSize: MyTheme.groupBoxTheme.titleText.fontSize
        color: MyTheme.groupBoxTheme.titleText.fontColor
        isBold: MyTheme.groupBoxTheme.titleText.isBold
        isUnderlined: MyTheme.groupBoxTheme.titleText.isUnderlined
        isItalic: MyTheme.groupBoxTheme.titleText.isItalic
        isStrikeout: MyTheme.groupBoxTheme.titleText.isStrikeout
    }

    contentItem: Column{
        padding: myGroupBox.padding
        spacing: myGroupBox.spacing
    }
}
