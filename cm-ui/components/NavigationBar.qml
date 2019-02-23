import QtQuick 2.0
import assets 1.0
Item {
    property bool isCollapsed: true
    anchors {
        top: parent.top
        bottom: parent.bottom
        left: parent.left
    }
    width: isCollapsed ? Style.widthNavigationBarCollapsed : Style.widthNavigationBarExpanded
    Rectangle {
        id: navigationBar
        anchors.fill: parent
        color: Style.colorNavigationBarBackground
        Column {
            width: parent.width
            NavigationButton {
                iconCharacter: "\uf0c9"
                description: ""
                onNavigationButtonClicked: isCollapsed = !isCollapsed
            }
            NavigationButton {
                iconCharacter: "\uf015"
                description: "Dasboard"
                onNavigationButtonClicked: masterController.ui_navigationController.goDashboardView()
            }

            NavigationButton {
                iconCharacter: "\uf234"
                description: "New Client"
                onNavigationButtonClicked: masterController.ui_navigationController.goCreateClientView()
            }
            NavigationButton {
                iconCharacter: "\uf002"
                description: "Find Client"
                onNavigationButtonClicked: masterController.ui_navigationController.goFindClientView()
            }
        }
    }


}
