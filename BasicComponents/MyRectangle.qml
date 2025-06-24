import QtQuick
import "../"
Rectangle {
    id: myRect
    property alias borderColor: myRect.border.color
    property alias borderWidth: myRect.border.width
    border.color: MyTheme.rectangleTheme.borderColor
    border.width: MyTheme.rectangleTheme.borderWidth
    radius: MyTheme.rectangleTheme.radius
    color: MyTheme.rectangleTheme.color
}
