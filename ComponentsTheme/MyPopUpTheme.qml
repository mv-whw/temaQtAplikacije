import QtQuick
import "./MyRectangleColorTheme"
import "../"
MyRectangleTheme {
    darkTheme: MyRectangleDarkTheme{
        color: "black"
        borderColor: "white"
    }
    lightTheme: MyRectangleLightTheme{
        color: "white"
        borderColor: "black"
    }
    property real padding: 10
    property real spacing: 10
}
