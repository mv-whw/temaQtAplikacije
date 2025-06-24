import QtQuick
import QtQuick.Controls.Basic
import "../"

Slider{
    id: mySlider

    background: MyRectangle{
        x: mySlider.leftPadding
        y: mySlider.topPadding+mySlider.availableHeight/2-height/2
        implicitWidth: 200
        implicitHeight: 14
        width: mySlider.availableWidth
        height: implicitHeight
        radius: MyTheme.sliderTheme.sliderBackground.radius
        color: MyTheme.sliderTheme.sliderBackground.color
        borderColor: MyTheme.sliderTheme.sliderBackground.borderColor
        MyRectangle{
            width: mySlider.visualPosition*parent.width
            height: parent.height
            radius: parent.radius
            color: MyTheme.sliderTheme.sliderValue.color
            borderColor: MyTheme.sliderTheme.sliderValue.borderColor
        }
    }

    handle: MyRectangle{
        x: mySlider.leftPadding+mySlider.visualPosition*(mySlider.availableWidth-width)
        y: mySlider.topPadding+mySlider.availableHeight/2-height/2
        implicitWidth: 20
        implicitHeight: 40
        radius: MyTheme.sliderTheme.handle.visualRect.radius
        color: mySlider.pressed? MyTheme.sliderTheme.handle.clickedColor: (mySlider.hovered? MyTheme.sliderTheme.handle.hoveredColor:MyTheme.sliderTheme.handle.visualRect.color)
        borderColor: MyTheme.sliderTheme.handle.visualRect.borderColor
        borderWidth: MyTheme.sliderTheme.handle.visualRect.borderWidth
    }
}
