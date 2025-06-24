import QtQuick
import "../"
import "./MyLabelColorTheme"
QtObject {
    property MyLabelLightTheme lightTheme: MyLabelLightTheme{}
    property MyLabelDarkTheme darkTheme: MyLabelDarkTheme{}

    readonly property color fontColor: MyTheme.useDarkTheme? darkTheme.fontColor:lightTheme.fontColor
    readonly property color highlightColor: MyTheme.useDarkTheme? darkTheme.highlightColor:lightTheme.highlightColor

    property real fontSize: 16
    property bool isBold: false
    property bool isUnderlined: false
    property bool isItalic: false
    property bool isStrikeout: false
}
