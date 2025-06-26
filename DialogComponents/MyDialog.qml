import QtQuick
import QtQuick.Controls.Basic
import "../BasicComponents"
import "../"

MyPopUp {
    id: myDialog
    property alias dialogTitle: head.dialogTitle
    property alias isYesVisible: responce.isYesVisible
    property alias isNoVisible: responce.isNoVisible
    property alias isOkVisible: responce.isOkVisible
    property alias isSaveVisible: responce.isSaveVisible
    property alias isApplyVisible: responce.isApplyVisible
    property alias isRetryVisible: responce.isRetryVisible
    property alias isCancelVisible: responce.isCancelVisible
    readonly property alias responceContentWidth: responce.contentWidth
    readonly property alias titleContentWidth: head.contWidth
    default property alias contentElem: itemsInside.children
    readonly property real parentWidth: myDialog.parent.width
    readonly property real parentHeight: myDialog.parent.height
    signal clickedOn(res: string)

    padding: 0
    spacing: 0
    height: dialogB.height
    background: MyRectangle{
        color: MyTheme.dialogTheme.body.color
        borderColor: MyTheme.dialogTheme.body.borderColor
        borderWidth: MyTheme.dialogTheme.body.borderWidth
        radius: MyTheme.dialogTheme.body.radius
    }
    modal: true
    closePolicy: MyPopUp.NoAutoClose
    Overlay.modal: Rectangle{
                color: MyTheme.useDarkTheme? Qt.rgba(0.0,0.0,0.0,0.8): Qt.rgba(0.5,0.5,0.5,0.8)
    }

    function fixXPosition():void
    {
        if(myDialog.opened)
        {
            if(myDialog.x+myDialog.width>myDialog.parentWidth)
                myDialog.x=myDialog.parentWidth-myDialog.width
            if(myDialog.x<0)
            {
                if((myDialog.parentWidth-myDialog.width)>myDialog.x)
                {
                    if(myDialog.parentWidth-myDialog.width>=0)
                        myDialog.x=0
                    else
                        if(myDialog.x<(myDialog.parentWidth-myDialog.width))
                            myDialog.x=myDialog.parentWidth-myDialog.width
                }
            }
        }
    }

    function fixYPosition():void
    {
        if(myDialog.opened)
        {
            if(myDialog.y+myDialog.height>myDialog.parentHeight)
                myDialog.y=myDialog.parentHeight-myDialog.height
        }
    }

    onParentWidthChanged: {
        myDialog.fixXPosition()
    }
    onParentHeightChanged: {
        myDialog.fixYPosition()
    }
    onXChanged: {
        myDialog.fixXPosition()
    }
    onYChanged: {
        myDialog.fixYPosition()
    }

    onOpened: {
        myDialog.fixXPosition()
        myDialog.fixYPosition()
    }

    Column{
        id: dialogB
        width: myDialog.width

        DialogHeader{
            id: head
            width: myDialog.width

            MouseArea{
                anchors.fill: parent
                hoverEnabled: false
                property point dxy
                onPressed: (mouse)=>{
                               cursorShape= Qt.ClosedHandCursor
                               dxy=head.mapFromItem(parent,mouse.x,mouse.y)
                           }

                onMouseXChanged: {
                    let nX=myDialog.x+(mouseX-dxy.x)
                    if(nX>=0 && nX<(myDialog.parent.width-myDialog.width))
                        myDialog.x=nX

                }
                onMouseYChanged: {

                    let nY=myDialog.y+(mouseY-dxy.y)
                    if(nY>=0 && nY<(myDialog.parent.height-myDialog.height))
                        myDialog.y=nY

                }

                onExited: {
                    if(cursorShape!==Qt.ArrowCursor)
                        cursorShape=Qt.ArrowCursor
                }
            }
        }
        Column{
            id: itemsInside
            topPadding: 10
            spacing: 10
            anchors.horizontalCenter: parent.horizontalCenter
        }
        ResponceItems{
            id: responce
            topPadding: 10
            bottomPadding: 10
            rightPadding: 5
            anchors.right: parent.right

            onClickedOn: (clickBtn)=>{
                myDialog.clickedOn(clickBtn)
            }
        }
    }
}
