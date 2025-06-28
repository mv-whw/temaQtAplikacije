import QtQuick 2.15
import QtQuick.Controls.Basic
import "../"

Row {
    id: myTextFieldView
    property alias text: myTextField.text
    property alias placeholderText: myTextField.placeholderText
    property bool selectAllOnFocus: true
    signal editingFinished()
    spacing: 5
    TextField{
        id: myTextField
        font.pixelSize: MyTheme.textFieldAreaTheme.label.fontSize
        width: parent.width-parent.spacing-(clearButton.visible? clearButton.width:0)
        background: MyRectangle{
            color: MyTheme.textFieldAreaTheme.background.color
            borderWidth: (myTextField.focus? 2:1)*MyTheme.textFieldAreaTheme.background.borderWidth
            borderColor: myTextField.focus? "dodgerblue": MyTheme.textFieldAreaTheme.background.borderColor
        }
        onEditingFinished: {
            myTextField.focus=false
            myTextFieldView.editingFinished()
        }
        onFocusChanged: {
            if(myTextField.focus && myTextFieldView.selectAllOnFocus && myTextField.text!=="")
                myTextField.selectAll()
        }

        selectByMouse: true
        selectionColor: MyTheme.textFieldAreaTheme.label.highlightColor
    }
    MyClearTextFieldButton{
        id: clearButton
        visible: myTextField.text!==""
        onClickedOn: myTextField.clear()
    }
}
