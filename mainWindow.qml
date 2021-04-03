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
    property var checkDateItem: "SpecificDate.qml"
    property var graphItem: "Graph.qml"
    property var exportItem: "Export.qml"

    flags: Qt.Window | Qt.FramelessWindowHint

    Material.theme: Material.Dark
    Material.accent: Material.LightBlue

    Rectangle {
        id: windowBar
        x: 0
        width: 800
        height: 35
        color: "#1c1d20"
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 0

        DragHandler{
            onActiveChanged: if(active){
                                window.startSystemMove()
                             }

        }

        Rectangle {
            id: rectangle
            width: 300
            height: 35
            color: "#1c1d20"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: windowIcon.right
            anchors.leftMargin: 0

            Text {
                id: text1
                x: 0
                width: 300
                height: 35
                color: "#ffffff"
                text: qsTr("COVID-19")
                anchors.top: parent.top
                font.pixelSize: 19
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: 0
                font.bold: true
                font.family: "Tahoma"
                minimumPixelSize: 20
            }
        }

        Image {
            id: windowIcon
            x: -300
            y: 4
            width: 41
            height: 24
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            source: "icon.png"
            anchors.leftMargin: 0
            fillMode: Image.PreserveAspectFit
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
        id: menuBar
        width: 137
        height: 568
        color: "#111115"
        anchors.left: parent.left
        anchors.top: windowBar.bottom
        anchors.topMargin: 0
        anchors.leftMargin: 0

        Button {
            id: todayButton
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.topMargin: -6
            background: Rectangle {
                implicitWidth: 137
                implicitHeight: 65
                color: todayButton.hovered ? "#ffffff": "#1c1d20"
                border.color: "#1c1d20"
                border.width: 1
                radius: 0

            }
            onClicked: stackView.push(initItem)

            Image {
                id: image
                width: 32
                height: 32
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.top: parent.top
                source: todayButton.hovered ? "todayB.png" : "todayW.png"
                anchors.topMargin: 10
                anchors.leftMargin: 5
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: todayText
                text: qsTr("Dzisiaj")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.family: "Verdana"
                anchors.rightMargin: 15
                font.pointSize: 13
                color: todayButton.hovered ? "#1c1d20": "#ffffff"
            }
        }

        Button {
            id: onDateButton
            anchors.left: parent.left
            anchors.top: todayButton.bottom
            anchors.leftMargin: 0
            anchors.topMargin: -12
            background: Rectangle {
                implicitWidth: 137
                implicitHeight: 65
                color: onDateButton.hovered ? "#ffffff": "#1c1d20"
                border.color: "#1c1d20"
                border.width: 1
                radius: 0
            }
            onClicked: {
                stackView.push(checkDateItem)
            }

            Image {
                id: image1
                y: 22
                width: 32
                height: 32
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: onDateButton.hovered ? "rangeB.png" : "rangeW.png"
                anchors.leftMargin: 3
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: onDateText
                text: qsTr("Dla dnia")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.family: "Verdana"
                anchors.rightMargin: 15
                font.pointSize: 13
                color: onDateButton.hovered ? "#1c1d20": "#ffffff"
            }
        }
        Button {
            id: onIntervalButton
            anchors.left: parent.left
            anchors.top: onDateButton.bottom
            anchors.leftMargin: 0
            anchors.topMargin: -12
            background: Rectangle {
                implicitWidth: 137
                implicitHeight: 65
                color: onIntervalButton.hovered ? "#ffffff": "#1c1d20"
                border.color: "#1c1d20"
                border.width: 1
                radius: 0
            }
            onClicked: stackView.push(graphItem)

            Image {
                id: image2
                y: 30
                width: 32
                height: 32
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: onIntervalButton.hovered ? "chartB.png" : "chartW.png"
                anchors.leftMargin: 3
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: onIntervalText
                text: qsTr("Wykres")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.family: "Verdana"
                anchors.rightMargin: 15
                font.pointSize: 13
                color: onIntervalButton.hovered ? "#1c1d20": "#ffffff"
            }
        }
        Button {
            id: exitButton
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.bottomMargin: -5
            background: Rectangle {
                implicitWidth: 137
                implicitHeight: 65
                color: exitButton.hovered ? "#ffffff": "#1c1d20"
                border.color: "#1c1d20"
                border.width: 1
                radius: 0
            }
            onClicked: window.close()

            Image {
                id: exitImage
                y: 30
                width: 32
                height: 32
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: exitButton.hovered ? "closeB.png" : "closeW.png"
                anchors.leftMargin: 3
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: exitText
                text: qsTr("Wyjście")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.family: "Verdana"
                anchors.rightMargin: 15
                font.pointSize: 13
                color: exitButton.hovered ? "#1c1d20": "#ffffff"
            }
        }

        Button {
            id: exportButton
            anchors.left: parent.left
            anchors.top: onIntervalButton.bottom
            background: Rectangle {
                color: exportButton.hovered ? "#ffffff": "#1c1d20"
                radius: 0
                border.color: "#1c1d20"
                border.width: 1
                implicitWidth: 137
                implicitHeight: 65
            }
            anchors.topMargin: -12
            anchors.leftMargin: 0

            onClicked: stackView.push(exportItem)
            Image {
                id: image3
                y: 30
                width: 32
                height: 32
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: exportButton.hovered ? "saveB.png" : "saveW.png"
                fillMode: Image.PreserveAspectFit
                anchors.leftMargin: 3
            }

            Text {
                id: exportButtonText
                color: exportButton.hovered ? "#1c1d20": "#ffffff"
                text: qsTr("Eksport")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 13
                anchors.rightMargin: 15
                font.bold: true
                font.family: "Verdana"
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:25}
}
##^##*/
