import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0


Page {
    objectName: "mainPage"
    SilicaFlickable {
        anchors.fill: parent

        Grid {
            width: parent.width
            anchors {
                left:parent.left
                margins: 50
            }
            rows: 2
            columns: 2
            spacing: 30

            TextField {
                id : field1
                implicitWidth: parent.width / 2 - 50
            }
            TextField {
                id : field2
                implicitWidth: parent.width / 2 - 50
            }

            Button {
                text: "Отменить"
                onClicked: {
                    field1.text = ""
                    field2.text = ""
                }

                backgroundColor: "white"
                color: "black"
            }
            Button {
                text: "Сложить"
                backgroundColor: "white"
                onClicked: {
                    console.log(parseInt(field1.text) + parseInt(field2.text))
                }
            }
        }
    }
}
