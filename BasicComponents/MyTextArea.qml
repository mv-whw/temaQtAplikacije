import QtQuick
import QtQuick.Controls.Basic
import "../"
ScrollView {
    id: myTextAreaView
    height: myTextArea.lineCount<myTextAreaView.maxLines? (myTextArea.contentHeight+myTextArea.bottomPadding+myTextArea.topPadding): (myTextArea.contentHeight/myTextArea.lineCount)*myTextAreaView.maxLines+myTextArea.topPadding+myTextArea.bottomPadding
    signal editingFinished()
    property alias text: myTextArea.text
    property alias placeholderText: myTextArea.placeholderText
    property bool selectAllOnFocus: true
    property int maxLines: 5
    property alias textAreaFocus: myTextArea.focus

    TextArea{
        id: myTextArea
        background: MyRectangle{
            color: MyTheme.textFieldAreaTheme.background.color
            borderColor: myTextArea.focus? "dodgerblue": MyTheme.textFieldAreaTheme.background.borderColor
            borderWidth: MyTheme.textFieldAreaTheme.background.borderWidth*(myTextArea.focus? 2:1)
        }
        selectionColor: MyTheme.textFieldAreaTheme.label.highlightColor
        inputMethodHints: Qt.ImhNoPredictiveText | Qt.ImhSensitiveData

        onFocusChanged: {
            if(!myTextArea.focus)
                myTextArea.editingFinished()
            else
                if(myTextAreaView.selectAllOnFocus && myTextArea.text!=="")
                    myTextArea.selectAll()
        }

        wrapMode: TextArea.WrapAtWordBoundaryOrAnywhere
        font.pixelSize: MyTheme.textFieldAreaTheme.label.fontSize
        onEditingFinished: {
            //myTextAreaView.editingFinished()
            // if(myTextArea.focus)
            //     myTextArea.focus=false
        }
        selectByKeyboard: true
        selectByMouse: true
    }
}
