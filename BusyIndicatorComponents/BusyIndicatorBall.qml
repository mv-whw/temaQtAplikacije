import QtQuick 2.15
import "../BasicComponents"
import "../"
MyRectangle {
    id: myBusyIndicatorBall
    property real centerPoint: 0
    x: myBusyIndicatorBall.centerPoint-myBusyIndicatorBall.width/2
    width: MyTheme.busyIndicatorTheme.ballMinSize
    height: width
    radius: width
    color: MyTheme.busyIndicatorTheme.ball.color
    borderColor: MyTheme.busyIndicatorTheme.ball.borderColor
    borderWidth: MyTheme.busyIndicatorTheme.ball.borderWidth
}
