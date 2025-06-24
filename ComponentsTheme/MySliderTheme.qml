import QtQuick
import "./MyRectangleColorTheme"
QtObject {
    property MyButtonTheme handle:MyButtonTheme{

    }

    property MyRectangleTheme sliderBackground: MyRectangleTheme{
        lightTheme: MyRectangleLightTheme{
            color: "lightgrey"
        }
        darkTheme: MyRectangleDarkTheme{
            color: "darkgrey"
        }
    }
    property MyRectangleTheme sliderValue: MyRectangleTheme{
        lightTheme: MyRectangleLightTheme{
            color: "green"
        }
        darkTheme: MyRectangleDarkTheme{
            color: "green"
        }
    }
}
