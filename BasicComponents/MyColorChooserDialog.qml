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

    Column{
        id: colorChooserColumn
        spacing: 10
        Grid{
            spacing: 10
            columns: 2
            MyLabel{text: qsTr("trenutna barva"); horizontalAlignment:MyLabel.AlignHCenter}
            MyLabel{text: qsTr("nova barva"); horizontalAlignment:MyLabel.AlignHCenter}

            MyRectangle{
                color: "white"
                width: 90
                height: 90
                MyRectangle{
                    id: oldColorRect
                    anchors.centerIn: parent
                    width: 88
                    height: 88
                }
            }

            MyRectangle{
                color: "white"
                width: 90
                height: 90
                MyRectangle{
                    id: newColorRect
                    anchors.centerIn: parent
                    width: 88
                    height: 88
                }
            }
        }

        MyLabel{text: qsTr("rdeča:");x:10}
        MySlider{id: redSlider;width: parent.width; from: 0.0; to: 1.0; stepSize: 0.001}
        MyLabel{text: qsTr("zelena:");x:10}
        MySlider{id: greenSlider;width: parent.width; from: 0.0; to: 1.0; stepSize: 0.001}
        MyLabel{text: qsTr("modra:");x:10}
        MySlider{id: blueSlider;width: parent.width; from: 0.0; to: 1.0; stepSize: 0.001}
        MyLabel{text: qsTr("transparentnost:");x:10}
        MySlider{id: alphaSlider;width: parent.width; from: 0.0; to: 1.0; stepSize: 0.001}

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
