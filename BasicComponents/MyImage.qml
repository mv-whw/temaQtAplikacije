import QtQuick

Image {
    id: myImage
    readonly property bool isLoaded: (myImage.source!=="" && myImage.status===MyImage.Ready)
    fillMode: MyImage.PreserveAspectFit
}
