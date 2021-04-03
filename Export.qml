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


        Button {
            id: exportButton
            width: 200
            height: 100
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            background: Rectangle {
                color: exportButton.hovered ? "#ffffff": "#1c1d20"
                border.color: "#ffffff"
                border.width: 1
                implicitWidth: 137
                implicitHeight: 65
                radius: 5
            }
            onPressed: {
                backend.exportData()
            }
            Image {
                id: image3
                y: 30
                width: 48
                height: 48
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: exportButton.hovered ? "saveB.png" : "saveW.png"
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.PreserveAspectFit
                anchors.leftMargin: 3
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
         }
    }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1;height:537;width:664}
}
##^##*/
