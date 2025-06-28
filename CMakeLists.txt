cmake_minimum_required(VERSION 3.30)

project(temaAplikacije VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set_source_files_properties(MyTheme.qml PROPERTIES QT_QML_SINGLETON_TYPE ON)
find_package(Qt6 REQUIRED COMPONENTS Quick Svg)
find_package(Qt6 REQUIRED COMPONENTS Core)
find_package(Qt6 REQUIRED COMPONENTS Core)

qt_standard_project_setup(REQUIRES 6.9)

qt_add_executable(apptemaAplikacije
    main.cpp
)

qt_add_qml_module(apptemaAplikacije
    URI temaAplikacije
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES MyTheme.qml
        QML_FILES BasicComponents/MyApplicationWindow.qml
        QML_FILES BasicComponents/MyRectangle.qml
        QML_FILES
        QML_FILES ComponentsTheme/MyRectangleTheme.qml
        QML_FILES ComponentsTheme/MyRectangleColorTheme/MyRectangleLightTheme.qml
        QML_FILES ComponentsTheme/MyRectangleColorTheme/MyRectangleDarkTheme.qml
        QML_FILES BasicComponents/MyLabel.qml
        QML_FILES ComponentsTheme/MyLabelTheme.qml
        QML_FILES ComponentsTheme/MyLabelColorTheme/MyLabelLightTheme.qml
        QML_FILES ComponentsTheme/MyLabelColorTheme/MyLabelDarkTheme.qml
        QML_FILES BasicComponents/MyImage.qml
        QML_FILES BasicComponents/MyIcon.qml
        QML_FILES ComponentsTheme/MyIconTheme.qml
        QML_FILES BasicComponents/MyButton.qml
        QML_FILES ComponentsTheme/MyButtonTheme.qml
        QML_FILES
        QML_FILES BasicComponents/MyFrame.qml
        QML_FILES ComponentsTheme/MyFrameTheme.qml
        QML_FILES ComponentsTheme/MyGroupBoxTheme.qml
        QML_FILES BusyIndicatorComponents/BusyIndicatorBall.qml
        QML_FILES ComponentsTheme/MyBusyIndicatorTheme.qml
        QML_FILES BasicComponents/MyBusyIndicator.qml
        QML_FILES BasicComponents/MyGroupBox.qml
        QML_FILES BasicComponents/MyProgressBar.qml
        QML_FILES ComponentsTheme/MyProgressBarTheme.qml
        QML_FILES
        QML_FILES ComponentsTheme/MySliderTheme.qml
        QML_FILES BasicComponents/MySlider.qml
        QML_FILES BasicComponents/MyRangeSlider.qml
        QML_FILES BasicComponents/MyPopUp.qml
        QML_FILES ComponentsTheme/MyPopUpTheme.qml
        QML_FILES DialogComponents/MyDialog.qml
        QML_FILES ComponentsTheme/MyDialogTheme.qml
        QML_FILES DialogComponents/ResponceItems.qml
        QML_FILES DialogComponents/DialogHeader.qml
        QML_FILES BasicComponents/MyMessageDialog.qml
        QML_FILES BasicComponents/MyTextArea.qml
        QML_FILES ComponentsTheme/MyTextAreaTextFieldTheme.qml
        QML_FILES BasicComponents/MyColorChooserDialog.qml
        SOURCES myapp.h myapp.cpp
        SOURCES
        QML_FILES BasicComponents/MyTextField.qml
        QML_FILES BasicComponents/MyClearTextFieldButton.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(apptemaAplikacije PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.apptemaAplikacije
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(apptemaAplikacije
    PRIVATE Qt6::Quick Qt6::Svg
)
target_link_libraries(apptemaAplikacije PRIVATE Qt6::Core)
target_link_libraries(apptemaAplikacije PRIVATE Qt6::Core)


include(GNUInstallDirs)
install(TARGETS apptemaAplikacije
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
