import QtQuick
import QtQuick.Controls.Basic
import "../"
Popup {
    id: myPopUp

    padding: MyTheme.popUpTheme.padding
    spacing: MyTheme.popUpTheme.spacing

    background: MyRectangle{
        color: MyTheme.popUpTheme.color
        borderColor: MyTheme.popUpTheme.borderColor
        borderWidth: MyTheme.popUpTheme.borderWidth
    }

    contentItem: Column{
        padding: myPopUp.padding
        spacing: myPopUp.spacing
    }
}
