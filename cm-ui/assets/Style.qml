pragma Singleton
import QtQuick 2.0

Item {
    readonly property color colourBackground: "#f4c842"
    readonly property color colorNavigationBarBackground: "#000000"
    readonly property color colorNavigationBarFront: "#ffffff"
    readonly property int pixelSizeNevigationBar: 42
    property alias fontAwesome: fontAwesomeLoader.name
    readonly property real widthNavigationButtonIcon: 80
    readonly property real heightNavigationButtonIcon: widthNavigationButtonIcon
    readonly property real widthNavigationButtonDescription: 160
    readonly property real heightNavigationButtonDescription: heightNavigationButtonIcon
    readonly property real widthNavigationButton: widthNavigationButtonIcon + widthNavigationButtonDescription
    readonly property real heightNavigationButton: Math.max(heightNavigationButtonDescription,heightNavigationButtonIcon)
    readonly property real widthNavigationBarCollapsed: widthNavigationButtonIcon
    readonly property real widthNavigationBarExpanded : widthNavigationButton
    readonly property int pixelSizeNavigationBarText: 22

    FontLoader {
        id : fontAwesomeLoader
        source :"qrc:/assets/fontawesome.ttf"
    }
}
