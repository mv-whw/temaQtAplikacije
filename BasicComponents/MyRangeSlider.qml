import QtQuick
import QtQuick.Controls.Basic
import "../"
RangeSlider {
    id: myRangeSlider

    background: MyRectangle{
        x: myRangeSlider.leftPadding
        y: myRangeSlider.topPadding+myRangeSlider.availableHeight/2-height/2
        implicitWidth: 200
        implicitHeight: 14
        width: myRangeSlider.availableWidth
        height: implicitHeight
        radius: MyTheme.sliderTheme.sliderBackground.radius
        color: MyTheme.sliderTheme.sliderBackground.color

        MyRectangle{
            x: myRangeSlider.first.visualPosition*parent.width
            width: myRangeSlider.second.visualPosition*parent.width-x
            height: parent.height
            color: MyTheme.sliderTheme.sliderValue.color
            radius: MyTheme.sliderTheme.sliderValue.radius
        }
    }

    first.handle: MyRectangle{
        x: myRangeSlider.leftPadding+myRangeSlider.first.visualPosition*(myRangeSlider.availableWidth-width)
        y: myRangeSlider.topPadding+myRangeSlider.availableHeight/2-height/2
        implicitWidth: 20
        implicitHeight: 40
        radius: MyTheme.sliderTheme.handle.visualRect.radius
        color: myRangeSlider.first.pressed? MyTheme.sliderTheme.handle.clickedColor: (myRangeSlider.first.hovered? MyTheme.sliderTheme.handle.hoveredColor:MyTheme.sliderTheme.handle.visualRect.color)
        borderWidth: MyTheme.sliderTheme.handle.visualRect.borderWidth
        borderColor: MyTheme.sliderTheme.handle.visualRect.borderColor
    }

    second.handle: MyRectangle{
        x: myRangeSlider.leftPadding+myRangeSlider.second.visualPosition*(myRangeSlider.availableWidth-width)
        y: myRangeSlider.topPadding+myRangeSlider.availableHeight/2-height/2
        implicitHeight: 40
        implicitWidth: 20
        radius: MyTheme.sliderTheme.handle.visualRect.radius
        color: myRangeSlider.second.pressed? MyTheme.sliderTheme.handle.clickedColor: (myRangeSlider.second.hovered? MyTheme.sliderTheme.handle.hoveredColor:MyTheme.sliderTheme.handle.visualRect.color)
        borderWidth: MyTheme.sliderTheme.handle.visualRect.borderWidth
        borderColor: MyTheme.sliderTheme.handle.visualRect.borderColor
    }
}
