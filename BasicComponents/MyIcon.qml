import QtQuick
import QtQuick.Effects

Item {
    id: myIcon
    property alias colorization: myIconEffects.colorization
    property alias colorizationColor: myIconEffects.colorizationColor
    property alias isLoaded: myIconPic.isLoaded


    onWidthChanged: myIconPic.width=myIcon.width
    onHeightChanged: myIconPic.height=myIcon.height

    MyImage{
        id: myIconPic
        visible: false
        onWidthChanged: {
            if(myIcon.width!==myIconPic.width)
                myIcon.width=myIconPic.width
        }
        onHeightChanged: {
            if(myIcon.height!==myIconPic.height)
                myIcon.height=myIconPic.height
        }
    }

    MultiEffect{
        id: myIconEffects
    }
}
