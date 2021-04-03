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

        Image {
            id: image
            x: 303
            y: 125
            width: 640
            height: 480
            anchors.verticalCenter: parent.verticalCenter
            source: "images/plot/plot.png"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

    }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75;height:537;width:664}
}
##^##*/
