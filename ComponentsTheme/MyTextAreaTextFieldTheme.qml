import QtQuick
import "./MyRectangleColorTheme"
import "./MyLabelColorTheme"
QtObject {
    property MyRectangleTheme background: MyRectangleTheme{
        darkTheme: MyRectangleDarkTheme{

        }
        lightTheme: MyRectangleLightTheme{
            color: "white"
        }
    }
    property MyLabelTheme label: MyLabelTheme{
        darkTheme: MyLabelDarkTheme{

        }
        lightTheme: MyLabelLightTheme{
            highlightColor: "lightblue"
        }
    }
}
