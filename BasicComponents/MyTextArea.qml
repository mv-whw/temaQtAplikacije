import QtQuick
import QtQuick.Controls.Basic
import "../"
ScrollView {
    id: myTextAreaView
    height: myTextArea.lineCount<myTextAreaView.maxLines? (myTextArea.contentHeight+myTextArea.bottomPadding+myTextArea.topPadding): (myTextArea.contentHeight/myTextArea.lineCount)*myTextAreaView.maxLines+myTextArea.topPadding+myTextArea.bottomPadding
    signal editingFinished()
    property alias text: myTextArea.text
    property int maxLines: 5
    TextArea{
        id: myTextArea
        background: MyRectangle{
            color: MyTheme.textFieldAreaTheme.background.color
            borderColor: myTextArea.focus? "dodgerblue": MyTheme.textFieldAreaTheme.background.borderColor
            borderWidth: MyTheme.textFieldAreaTheme.background.borderWidth*(myTextArea.focus? 2:1)
        }
        wrapMode: TextArea.WordWrap
        font.pixelSize: MyTheme.textFieldAreaTheme.label.fontSize
        onEditingFinished: {
            myTextAreaView.editingFinished()
            myTextArea.focus=false
        }
    }

}
