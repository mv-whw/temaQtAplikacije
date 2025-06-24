import QtQuick
import "../BasicComponents"
import "../DialogComponents"
import "../"
MyDialog {
    id: myMessageDialog
    property alias messageText: message.text

    onMessageTextChanged: {
        myMessageDialog.setDialogAndMessageWidth()
    }
    onDialogTitleChanged: {
        myMessageDialog.setDialogAndMessageWidth()
    }
    onResponceContentWidthChanged: {
        myMessageDialog.setDialogAndMessageWidth()
    }

    MyLabel{
        id: message
    }

    function setDialogAndMessageWidth():void
    {
        let mdPWidth=MyTheme.appWindowWidth
        let newDialogWidth=0
        if(mdPWidth>=600)
            newDialogWidth=580
        else
        {
            if(mdPWidth<360)
                newDialogWidth=300
            else
                newDialogWidth=mdPWidth-20
        }

        //--------------------------------------------
        message.wrapMode= MyLabel.NoWrap
        let conWidth=message.contentWidth
        let newMessageWidth=0
        let maxResTitle=Math.max(myMessageDialog.responceContentWidth,(myMessageDialog.titleContentWidth+20))
        if(newDialogWidth<=conWidth)
            newMessageWidth=newDialogWidth-20
        else
        {
            newDialogWidth=conWidth+20
            newMessageWidth=conWidth
        }
        if(newDialogWidth<=maxResTitle)
        {
            newDialogWidth=maxResTitle+20
            if((newDialogWidth-20)>=conWidth)
                newMessageWidth=conWidth
        }
        myMessageDialog.width=newDialogWidth
        message.width=newMessageWidth
        message.wrapMode=MyLabel.WordWrap
    }

    onClickedOn: (clickedBtn)=>{
        myMessageDialog.close()
    }
}
