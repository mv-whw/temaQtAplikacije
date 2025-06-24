import QtQuick 2.15
import "../"
import "./MyRectangleColorTheme"
QtObject {
    property MyRectangleLightTheme lightTheme: MyRectangleLightTheme{}
    property MyRectangleDarkTheme darkTheme: MyRectangleDarkTheme{}
    readonly property color color: MyTheme.useDarkTheme? darkTheme.color:lightTheme.color
    readonly property color borderColor: MyTheme.useDarkTheme? darkTheme.borderColor:lightTheme.borderColor

    property real radius: 10
    property real borderWidth: 1.4
}
