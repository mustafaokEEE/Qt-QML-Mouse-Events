import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

ApplicationWindow {
    width:300
    height:300
    visible:true
    title:"Mouse , Keyboard Uygulamalari"

    Rectangle {
        width: 200
        height: 200
        color:"yellow"
        anchors.centerIn:parent
        border.color:"black"
        radius:10
        border.width:5

        Text {
            text:"Test"
            font.pixelSize: 30
            anchors.centerIn: parent

        }
        MouseArea {
            anchors.fill: parent
            acceptedButtons: Qt.AllButtons
            onClicked: {
                if(mouse.button===Qt.LeftButton) {
                    console.log("Left Click Yapildi")
                } else if (mouse.button === Qt.RightButton) {
                    console.log("Right Click Yapildi")
            }
            }
        }
    }

}


