import QtQuick 2.12
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.12

Item {
    width: 664
    height: 537

    property alias refreshData: refreshButton
    Rectangle {
        id: rectangle
        color: "#272727"
        anchors.fill: parent

        Rectangle {
            id: confirmedRect
            width: 275
            height: 75
            color: "#111115"
            border.color: "#ffffff"
            anchors.left: parent.left
            anchors.top: parent.top
            layer.smooth: false
            anchors.leftMargin: 40
            anchors.topMargin: 50
            radius: 5

            Text {
                id: text6
                height: 50
                text: qsTr("POTWIERDZONE")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: image.right
                anchors.right: parent.right
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.rightMargin: 20
                anchors.leftMargin: 20
                font.bold: false
                color: "#ffffff"
            }

            Image {
                id: image
                width: 32
                height: 32
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: "images/confirmed.png"
                anchors.leftMargin: 20
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: deathsRect
            width: 275
            height: 75
            color: "#111115"
            border.color: "#ffffff"
            anchors.left: parent.left
            anchors.top: confirmedRect.bottom
            layer.smooth: false
            anchors.leftMargin: 40
            anchors.topMargin: 10
            radius: 5


            Text {
                id: deathsText
                text: qsTr("ZGONY")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: image1.right
                anchors.right: parent.right
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.rightMargin: 20
                anchors.leftMargin: 20
                color: "#ffffff"
            }

            Image {
                id: image1
                width: 32
                height: 32
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: "images/deaths.png"
                anchors.leftMargin: 20
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: recoveredRect
            width: 275
            height: 75
            color: "#111115"
            border.color: "#ffffff"
            anchors.left: parent.left
            anchors.top: deathsRect.bottom
            layer.smooth: false
            anchors.leftMargin: 40
            anchors.topMargin: 10
            radius: 5

            Text {
                id: recoveredText
                text: qsTr("OZDROWIEŃCY")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: image2.right
                anchors.right: parent.right
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.rightMargin: 20
                anchors.leftMargin: 20
                color: "#ffffff"
            }

            Image {
                id: image2
                width: 32
                height: 32
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: "images/recovered.png"
                anchors.leftMargin: 20
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: activeRect
            width: 275
            height: 75
            color: "#111115"
            border.color: "#ffffff"
            anchors.left: parent.left
            anchors.top: recoveredRect.bottom
            layer.smooth: false
            anchors.leftMargin: 40
            anchors.topMargin: 10
            radius: 5

            Text {
                id: activeText
                text: qsTr("W TRAKCIE CHOROBY")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: image3.right
                anchors.right: parent.right
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.rightMargin: 20
                anchors.leftMargin: 20
                color: "#ffffff"
            }

            Image {
                id: image3
                width: 32
                height: 32
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: "images/sick.png"
                anchors.leftMargin: 20
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: confirmedRectSummary
            width: 275
            height: 75
            color: "#111115"
            border.color: "#ffffff"
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 40
            radius: 5
            Text {
                id: confirmedTextSummary
                color: "#ffffff"
                text: qsTr("-")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            layer.smooth: false
            anchors.topMargin: 50
        }

        Rectangle {
            id: deathsRectSummary
            width: 275
            height: 75
            color: "#111115"
            border.color: "#ffffff"
            anchors.right: parent.right
            anchors.top: confirmedRectSummary.bottom
            radius: 5
            Text {
                id: deathsTextSummary
                color: "#d80000"
                text: qsTr("-")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            layer.smooth: false
            anchors.topMargin: 10
            anchors.rightMargin: 40
        }

        Rectangle {
            id: recoveredRectSummary
            width: 275
            height: 75
            color: "#111115"
            border.color: "#ffffff"
            anchors.right: parent.right
            anchors.top: deathsRectSummary.bottom
            radius: 5
            Text {
                id: recoveredTextSummary
                color: "#1de516"
                text: qsTr("-")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            layer.smooth: false
            anchors.topMargin: 10
            anchors.rightMargin: 40
        }

        Rectangle {
            id: activeRectSummary
            width: 275
            height: 75
            color: "#111115"
            border.color: "#ffffff"
            anchors.right: parent.right
            anchors.top: recoveredRectSummary.bottom
            radius: 5
            Text {
                id: activeTextSummary
                color: "#ffffff"
                text: qsTr("-")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            layer.smooth: false
            anchors.topMargin: 10
            anchors.rightMargin: 40
        }


        Button {
            id: refreshButton
            anchors.bottom: claimText.top
            anchors.bottomMargin: 5
            anchors.horizontalCenter: parent.horizontalCenter
            background: Rectangle {
                implicitWidth: 100
                implicitHeight: 35
                color: refreshButton.hovered ? "#ffffff" : "#1c1d20"
                border.color: "#1c1d20"
                border.width: 1
                radius: 0

            }

            onPressed: {
                backend.welcomeText(confirmedTextSummary.text, deathsTextSummary.text, recoveredTextSummary.text, activeTextSummary.text)
            }

            Image {
                id: refreshImage
                y: 30
                width: 20
                height: 20
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: refreshButton.hovered ? "images/refreshB.png" : "images/refreshW.png"
                anchors.leftMargin: 5
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: refreshText
                text: qsTr("Odśwież")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.family: "Verdana"
                anchors.rightMargin: 10
                font.pointSize: 10
                color: refreshButton.hovered ? "#1c1d20": "#ffffff"
            }
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
            anchors.bottomMargin: 1
        }
        Connections{
            target: backend

            function onRefreshData(confirmed, deaths, recovered, active){
                confirmedTextSummary.text = confirmed
                deathsTextSummary.text = deaths
                recoveredTextSummary.text = recovered
                activeTextSummary.text = active
            }

        }

    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.25;height:537;width:664}
}
##^##*/
