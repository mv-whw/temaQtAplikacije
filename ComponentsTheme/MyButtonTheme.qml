import QtQuick
import "../"
import "./MyRectangleColorTheme"
import "./MyLabelColorTheme"
QtObject {
    property MyRectangleTheme visualRect: MyRectangleTheme{
        lightTheme: MyRectangleLightTheme{
            color: "dodgerblue"
            borderColor: "dodgerblue"
        }
        darkTheme: MyRectangleDarkTheme{
            color: "blue"
            borderColor: "blue"
        }
    }
    property MyLabelTheme visualTitle: MyLabelTheme{
        lightTheme: MyLabelLightTheme{
            fontColor: "white"
        }
        darkTheme: MyLabelDarkTheme{
            fontColor: "white"
        }
        isBold: true
    }

    property MyIconTheme visualIcon: MyIconTheme{

    }

    property color hoveredColor: Qt.lighter(visualRect.color,1.2)
    property color clickedColor: Qt.darker(visualRect.color,1.2)

}
