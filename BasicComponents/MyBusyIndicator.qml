import QtQuick 2.15
import QtQuick.Controls.Basic
import "../BusyIndicatorComponents"
import "../"
Popup {
    id: myBusyIndicatorPopUp
    background: MyRectangle{
        borderWidth: 0
        color: "transparent"
    }
    anchors.centerIn: parent
    modal: false
    width: 240
    height: MyTheme.busyIndicatorTheme.ballMaxSize

    BusyIndicatorBall{
        id: b1
        centerPoint: 20
        anchors.verticalCenter: parent.verticalCenter
    }
    BusyIndicatorBall{
        id: b2
        centerPoint: 70
        anchors.verticalCenter: parent.verticalCenter
    }
    BusyIndicatorBall{
        id: b3
        centerPoint: 120
        anchors.verticalCenter: parent.verticalCenter
    }
    BusyIndicatorBall{
        id: b4
        centerPoint: 170
        anchors.verticalCenter: parent.verticalCenter
    }
    BusyIndicatorBall{
        id: b5
        centerPoint: 220
        anchors.verticalCenter: parent.verticalCenter
    }

    SequentialAnimation{
        id: busyIndAnimation
        NumberAnimation {
            targets: [b1,b2,b3,b4,b5]
            properties: "width"
            duration: MyTheme.busyIndicatorTheme.animationLength
            to: MyTheme.busyIndicatorTheme.ballMaxSize
        }
        NumberAnimation {
            targets: [b1,b2,b3,b4,b5]
            properties: "width"
            duration: MyTheme.busyIndicatorTheme.animationLength
            to: MyTheme.busyIndicatorTheme.ballMinSize
        }
        onStopped: {
            b1.width=MyTheme.busyIndicatorTheme.ballMinSize
            b2.width=MyTheme.busyIndicatorTheme.ballMinSize
            b3.width=MyTheme.busyIndicatorTheme.ballMinSize
            b4.width=MyTheme.busyIndicatorTheme.ballMinSize
            b5.width=MyTheme.busyIndicatorTheme.ballMinSize
        }

        loops: Animation.Infinite
    }

    onVisibleChanged: {
        if(myBusyIndicatorPopUp.visible)
        {
            if(!busyIndAnimation.running)
                busyIndAnimation.start()
        }
        else
            if(busyIndAnimation.running)
                busyIndAnimation.stop()
    }
}
