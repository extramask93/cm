import QtQuick 2.9
import assets 1.0
Item {
    Rectangle {
        anchors.fill: parent
        Text {
            id: name
            anchors.centerIn: parent
            text: qsTr("SplashView")
        }
        color : Style.colourBackground//"#f4c842"
    }
}
