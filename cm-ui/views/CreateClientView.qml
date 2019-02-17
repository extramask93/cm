import QtQuick 2.0
import assets 1.0
Item {
    Rectangle {
        anchors.fill: parent
    Text {
        id: name
        anchors.centerIn: parent
        text: qsTr("CreateClientView")
    }
    color : Style.colourBackground//"#f4c842"

    }
}
