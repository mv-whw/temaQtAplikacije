import QtQuick 2.15
import QtQuick.Controls.Basic
import "../"
ApplicationWindow {
    id: myAppWindow

    onWidthChanged: MyTheme.appWindowWidth=myAppWindow.width
    onHeightChanged: MyTheme.appWindowHeight=myAppWindow.height

    Component.onCompleted: {
        MyTheme.platformOS=Qt.platform.os
    }
}
