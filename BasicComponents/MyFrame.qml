import QtQuick
import QtQuick.Controls.Basic
import "../"
Frame {
    id: myFrame

    padding: MyTheme.frameTheme.padding
    spacing: MyTheme.frameTheme.spacing

    contentItem: Column{
        spacing: myFrame.spacing
        padding: myFrame.padding
    }

    background: MyRectangle{
        color: MyTheme.frameTheme.color
        borderColor: MyTheme.frameTheme.borderColor
        borderWidth: MyTheme.frameTheme.borderWidth
        radius: MyTheme.frameTheme.radius
    }
}
