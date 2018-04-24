import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    color: "#787878"
    title: qsTr("busy4.me")

    ScrollView {
        id: scrollView
        anchors.rightMargin: 19
        anchors.bottomMargin: 186
        anchors.leftMargin: 23
        anchors.topMargin: 39
        anchors.fill: parent

        ListView {
            x: 0
            width: parent.width
            anchors.top: parent.top
            anchors.topMargin: 6
            model: 20
            delegate: ItemDelegate {
                text: "Item " + (index + 1)
                width: parent.width
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 23
        y: 365
        width: 598
        height: 96
        color: "#a7a4ff"

        Switch {
            id: switch1
            x: 32
            y: 34
            text: qsTr("Enabled")
        }

        Button {
            id: button
            x: 475
            y: 32
            width: 94
            height: 32
            text: qsTr("OK")
        }
    }
}
