import QtQuick
import "./MyRectangleColorTheme"
import "./MyLabelColorTheme"
QtObject {
    property MyRectangleTheme titleBarRect: MyRectangleTheme{
        darkTheme: MyRectangleDarkTheme{

        }
        lightTheme: MyRectangleLightTheme{
            color:"dodgerblue"
        }
    }
    property MyLabelTheme titleLabel: MyLabelTheme{
        darkTheme: MyLabelDarkTheme{

        }
        lightTheme: MyLabelLightTheme{
            fontColor: "white"
        }
        isBold: true
    }

    property MyRectangleTheme body: MyRectangleTheme{
        darkTheme: MyRectangleDarkTheme{

        }
        lightTheme: MyRectangleLightTheme{
            color: "lightblue"
        }
    }
    property MyButtonTheme responceButtons: MyButtonTheme{}
}
