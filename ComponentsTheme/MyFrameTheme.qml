import QtQuick
import "./MyRectangleColorTheme"
MyRectangleTheme {
    lightTheme: MyRectangleLightTheme{
        color: "transparent"
    }

    darkTheme: MyRectangleDarkTheme{
        color: "transparent"
    }

    property real spacing: 10
    property real padding: 10
}
