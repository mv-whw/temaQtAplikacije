import QtQuick
import "../"
import "../DialogComponents"
MyDialog{
    id: myColorChooser
    isOkVisible: false
    isSaveVisible: true
    isCancelVisible: true

    dialogTitle: qsTr("izberi novo barvo")
    property alias oldColor: oldColorRect.color
    signal newColor(newSelectedColor:color)
    width: parentWidth>360? (parentWidth>450? 450:parentWidth):360

    onOpened: {
        newColorRect.color=oldColorRect.color
        redSlider.value=oldColorRect.color.r
        greenSlider.value=oldColorRect.color.g
        blueSlider.value=oldColorRect.color.b
        alphaSlider.value=oldColorRect.color.a
    }


    Grid{
        spacing: 10
        columns: 2
        horizontalItemAlignment: Grid.AlignHCenter
        property real sliderWidth: myColorChooser.width/2-5

        MyLabel{text: qsTr("rdeča:");}
        MyLabel{text: qsTr("zelena:");}
        MySlider{id: redSlider;width: parent.sliderWidth; from: 0.0; to: 1.0; stepSize: 0.001; onValueChanged: parent.updateNewColorRect()}
        MySlider{id: greenSlider;width: parent.sliderWidth; from: 0.0; to: 1.0; stepSize: 0.001; onValueChanged: parent.updateNewColorRect()}
        MyLabel{text: qsTr("modra:");}
        MyLabel{text: qsTr("transparentnost:");}
        MySlider{id: blueSlider;width: parent.sliderWidth; from: 0.0; to: 1.0; stepSize: 0.001; onValueChanged: parent.updateNewColorRect()}
        MySlider{id: alphaSlider;width: parent.sliderWidth; from: 0.0; to: 1.0; stepSize: 0.001; onValueChanged: parent.updateNewColorRect()}


        MyLabel{text: qsTr("trenutna barva");}
        MyLabel{text: qsTr("nova barva"); }
        MyRectangle{
            id: oldColorRect
            width: 88
            height: 88

        }


        MyRectangle{
            id: newColorRect
            width: 88
            height: 88
        }

        function updateNewColorRect()
        {
            newColorRect.color=Qt.rgba(redSlider.value,greenSlider.value,blueSlider.value,alphaSlider.value)
        }
    }

    onClickedOn: (buttonClicked)=>{
                    if(buttonClicked==="save")
                        myColorChooser.newColor(newColorRect.color)
                    myColorChooser.close()
                 }
}
