import QtQuick
import "./MyRectangleColorTheme"
QtObject {
    property MyRectangleTheme ball: MyRectangleTheme{
        lightTheme: MyRectangleLightTheme{
            color: "lightblue"
            borderColor: "dodgerblue"
        }
        darkTheme: MyRectangleDarkTheme{
            color: "lightblue"
            borderColor: "dodgerblue"
        }
    }
    property real ballMinSize: 20
    property real ballMaxSize: 40
    property real animationLength: 1000

}
