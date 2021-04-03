import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.12

ApplicationWindow {
    id: window
    width: 800
    height: 600
    visible: true
    title: qsTr("Covid Checker")
    property var initItem: "mainData.qml"

    flags: Qt.Window | Qt.FramelessWindowHint

    Material.theme: Material.Dark
    Material.accent: Material.LightBlue

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 800
        height: 35
        color: "#1c1d20"



        Text {
            id: text1
            x: 0
            y: 0
            width: 800
            height: 32
            color: "#ffffff"
            text: qsTr("COVID-19 Upday")
            font.pixelSize: 19
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.family: "Tahoma"
            minimumPixelSize: 20

            Image {
                id: image
                x: 0
                y: 4
                width: 41
                height: 24
                source: "icon.png"
                fillMode: Image.PreserveAspectFit
            }
        }
    }

    Rectangle {
        id: contentPage
        x: 136
        y: 36
        width: 664
        height: 537
        color: "#2b2a2a"



        StackView {
            id: stackView
            anchors.fill: parent
            initialItem: initItem
        }
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 36
        width: 137
        height: 564
        color: "#111115"

        Button {
            y:-7
            id: todayButton
            text: "Today"
            background: Rectangle {
                implicitWidth: 137
                implicitHeight: 60
                color: todayButton.hovered ? "#393C50" : "#15161E"
                border.color: "#342526"
                border.width: 1
                radius: 0
            }
        }

        Button {
            y:53
            id: onDateButton
            text: "Specific Date"
            background: Rectangle {
                implicitWidth: 137
                implicitHeight: 60
                color: onDateButton.hovered ? "#393C50" : "#15161E"
                border.color: "#342526"
                border.width: 1
                radius: 0
            }
        }
        Button {
            y:113
            id: onIntervalButton
            text: "From Interval"
            background: Rectangle {
                implicitWidth: 137
                implicitHeight: 60
                color: onIntervalButton.hovered ? "#393C50" : "#15161E"
                border.color: "#342526"
                border.width: 1
                radius: 0
            }
        }
        Button {
            y:500
            id: exitButton
            text: "Exit"
            background: Rectangle {
                implicitWidth: 137
                implicitHeight: 60
                color: exitButton.hovered ? "#393C50" : "#15161E"
                border.color: "#342526"
                border.width: 1
                radius: 0
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:11}D{i:13}
}
##^##*/
