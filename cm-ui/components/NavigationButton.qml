import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.4
import assets 1.0
Item {
    property alias iconCharacter: iconText.text
    property alias description: descText.text
    property color hoverColor: Style.colorNavigationBarBackground
    signal navigationButtonClicked()
    width: parent.width
    height: Style.heightNavigationButton
    Rectangle {
        id : background
        anchors.fill: parent
        color : Style.colorNavigationBarBackground
        states : [
            State {
                name : "hover"
                PropertyChanges {
                    target: background
                    color : hoverColor

                }
            }

        ]
        Row {
            Text {
                id : iconText
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                width: Style.widthNavigationButtonIcon
                height: Style.heightNavigationButtonIcon
                font {
                    family: Style.fontAwesome
                    pixelSize: Style.pixelSizeNevigationBar
                }
                color: Style.colorNavigationBarFront
                text: "\uf11a"
            }
            Text {
                id : descText
                font.pixelSize: Style.pixelSizeNavigationBarText
                verticalAlignment: Text.AlignVCenter
                width: Style.widthNavigationButtonDescription
                height: Style.heightNavigationButtonDescription
                color : Style.colorNavigationBarFront
                text: "SET_ME"
            }
        }
        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onEntered: background.state = "hove"
            onExited: background.state = ""
            onClicked: navigationButtonClicked()
        }
    }
}
