pragma Singleton
import QtQuick
import "./ComponentsTheme"
QtObject {
    property bool useDarkTheme: false
    property string platformOS: ""
    property bool isInLandscape: true
    readonly property bool isWindows: platformOS==="windows"
    readonly property bool isLinux: platformOS==="linux"
    readonly property bool isMacOs: platformOS==="osx"
    readonly property bool isWasm: platformOS==="wasm"
    readonly property bool isAndroid: platformOS==="android"
    readonly property bool isIos: platformOS==="ios"
    readonly property bool isDesktop: (isWindows || isLinux || isMacOs || isWasm)
    readonly property bool isMobile: (isAndroid || isIos)
    readonly property bool isOtherOs: (!isDesktop && !isMobile)

    property real appWindowWidth: 640
    property real appWindowHeight:480

    property MyRectangleTheme rectangleTheme: MyRectangleTheme{}
    property MyLabelTheme labelTheme: MyLabelTheme{}
    property MyButtonTheme buttonTheme: MyButtonTheme{}
    property MyFrameTheme frameTheme: MyFrameTheme{}
    property MyBusyIndicatorTheme busyIndicatorTheme: MyBusyIndicatorTheme{}
    property MyGroupBoxTheme groupBoxTheme: MyGroupBoxTheme{}
    property MyProgressBarTheme progressBarTheme: MyProgressBarTheme{}
    property MySliderTheme sliderTheme: MySliderTheme{}
    property MyPopUpTheme popUpTheme: MyPopUpTheme{}
    property MyDialogTheme dialogTheme: MyDialogTheme{}
    property MyTextAreaTextFieldTheme textFieldAreaTheme: MyTextAreaTextFieldTheme{}
}
