import QtQuick 2.12
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.12
import "pages"
Item {
    id: item1
    width: 664
    height: 537

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
            anchors.topMargin: 175
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
                source: "confirmed.png"
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
                source: "deaths.png"
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
                source: "recovered.png"
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
                source: "sick.png"
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
            anchors.topMargin: 175
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

        Rectangle {
            id: rectangle1
            width: 150
            height: 150
            color: "#ffffff"
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.horizontalCenter: parent.horizontalCenter
            radius: 5
            DatePicker {
                x: 257
                y: 0
                anchors.horizontalCenter: parent.horizontalCenter
                Component.onCompleted: set(new Date())
                onClicked:             backend.specificDate(Qt.formatDate(date, 'yyyy-MM-dd'))
            }
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
    D{i:0;formeditorZoom:0.75;height:537;width:664}
}
##^##*/
