import QtQuick
import "../"
import "./MyLabelColorTheme"
import "./MyRectangleColorTheme"
QtObject {
    property MyRectangleTheme unfinishedRect: MyRectangleTheme{
        lightTheme: MyRectangleLightTheme{
            color: "lightgrey"
        }
        darkTheme: MyRectangleDarkTheme{
            color: "grey"
        }
    }
    property MyRectangleTheme finishedRectValue: MyRectangleTheme{
        lightTheme: MyRectangleLightTheme{
            color: "lightgreen"
        }
        darkTheme: MyRectangleDarkTheme{
            color: "green"
        }
    }

    property MyLabelTheme finishedValue: MyLabelTheme{
        lightTheme: MyLabelLightTheme{
            fontColor: "black"
        }
        darkTheme: MyLabelDarkTheme{
            fontColor: "white"
        }
        fontSize: 18
        isBold: true
    }
    property MyLabelTheme detailsInfo: MyLabelTheme{
        lightTheme: MyLabelLightTheme{
            fontColor: "black"
        }
        darkTheme: MyLabelDarkTheme{
            fontColor: "white"
        }
        isItalic: true
    }
}
