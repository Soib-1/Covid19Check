import QtQuick 2.12

Item {
    width: 664
    height: 537

    Rectangle {
        id: rectangle
        color: "#2b2a2a"
        anchors.fill: parent

        Rectangle {
            id: confirmedRect
            width: 250
            height: 50
            color: "#2b2a2a"
            border.color: "#373333"
            anchors.left: parent.left
            anchors.top: parent.top
            layer.smooth: false
            anchors.leftMargin: 40
            anchors.topMargin: 30

            Text {
                id: text6
                text: qsTr("Potwierdzone przypadki")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: false
                color: "#ffffff"
            }
        }

        Rectangle {
            id: deathsRect
            width: 250
            height: 50
            color: "#2b2a2a"
            border.color: "#373333"
            anchors.left: parent.left
            anchors.top: confirmedRect.bottom
            layer.smooth: false
            anchors.leftMargin: 40
            anchors.topMargin: 30

            Text {
                id: deathsText
                text: qsTr("Zgony")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "#ffffff"
            }
        }

        Rectangle {
            id: recoveredRect
            width: 250
            height: 50
            color: "#2b2a2a"
            border.color: "#373333"
            anchors.left: parent.left
            anchors.top: deathsRect.bottom
            layer.smooth: false
            anchors.leftMargin: 40
            anchors.topMargin: 30

            Text {
                id: recoveredText
                text: qsTr("Ozdrowieńcy")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "#ffffff"
            }
        }

        Rectangle {
            id: activeRect
            width: 250
            height: 50
            color: "#2b2a2a"
            border.color: "#373333"
            anchors.left: parent.left
            anchors.top: recoveredRect.bottom
            layer.smooth: false
            anchors.leftMargin: 40
            anchors.topMargin: 30

            Text {
                id: activeText
                text: qsTr("Aktywne Przypadki")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "#ffffff"
            }
        }

        Rectangle {
            id: substractRect
            width: 250
            height: 50
            color: "#2b2a2a"
            border.color: "#373333"
            anchors.left: parent.left
            anchors.top: activeRect.bottom
            layer.smooth: false
            anchors.leftMargin: 40
            anchors.topMargin: 30

            Text {
                id: substractText
                text: qsTr("Przyrost od wczoraj")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "#ffffff"
            }
        }

        Rectangle {
            id: confirmedRectSummary
            width: 250
            height: 50
            color: "#2b2a2a"
            border.color: "#373333"
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 40
            Text {
                id: confirmedTextSummary
                color: "#ffffff"
                text: qsTr("0")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            layer.smooth: false
            anchors.topMargin: 30
        }

        Rectangle {
            id: deathsRectSummary
            width: 250
            height: 50
            color: "#2b2a2a"
            border.color: "#373333"
            anchors.right: parent.right
            anchors.top: confirmedRectSummary.bottom
            Text {
                id: deathsTextSummary
                color: "#eb1440"
                text: qsTr("1")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            layer.smooth: false
            anchors.topMargin: 30
            anchors.rightMargin: 40
        }

        Rectangle {
            id: recoveredRectSummary
            width: 250
            height: 50
            color: "#2b2a2a"
            border.color: "#373333"
            anchors.right: parent.right
            anchors.top: deathsRectSummary.bottom
            Text {
                id: recoveredTextSummary
                color: "#1de516"
                text: qsTr("2")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            layer.smooth: false
            anchors.topMargin: 30
            anchors.rightMargin: 40
        }

        Rectangle {
            id: activeRectSummary
            width: 250
            height: 50
            color: "#2b2a2a"
            border.color: "#373333"
            anchors.right: parent.right
            anchors.top: recoveredRectSummary.bottom
            Text {
                id: activeTextSummary
                color: "#ffffff"
                text: qsTr("3")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            layer.smooth: false
            anchors.topMargin: 30
            anchors.rightMargin: 40
        }

        Rectangle {
            id: substractRectSummary
            width: 250
            height: 50
            color: "#2b2a2a"
            border.color: "#373333"
            anchors.right: parent.right
            anchors.top: activeRectSummary.bottom
            Text {
                id: substractTextSummary
                color: "#ffffff"
                text: qsTr("4")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            layer.smooth: false
            anchors.topMargin: 30
            anchors.rightMargin: 40
        }

        Text {
            id: claimText
            x: 321
            y: 457
            width: 400
            height: 30
            color: "#8f8989"
            text: qsTr("Źródło danych: covid19api.com")
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.italic: true
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 10
        }
    }
}

/*##^##
Designer {
    D{i:0;height:537;width:664}D{i:3}D{i:12}D{i:14}D{i:22}D{i:1}
}
##^##*/
