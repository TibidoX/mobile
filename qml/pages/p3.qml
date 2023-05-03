import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

//Component {
//    id: p3
    Page {
        id: pg
        property string t: ""
        Column {
            width: parent.width
            anchors.centerIn: parent
            spacing: Theme.paddingLarge
            TextField {
                id: resField
                width: parent.width

            }

            Button {
                text: "Ввести текст"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    var dialog = pageStack.push(dlg, {})
                    dialog.accepted.connect(function() {
                        resField.text = t;
                    })
                }
            }
        }
        Component {
            id: dlg
            //property string t: ""
            Dialog {
                anchors.centerIn: parent
                id:d
                DialogHeader {
                    id: header
                    //title: "Confirm deletion"
                }
                TextField {
                    id: textField
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    width: parent.width
                }

                onAccepted: {
                    //pageStack.pop()
                    //resField.text = textField.text
                    t = textField.text;
                }
            }
        }
    }
//}
