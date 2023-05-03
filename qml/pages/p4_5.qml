import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
//Component {
//    id: p4
    Page {
        id: pg
        Column {
            width: parent.width
            anchors.centerIn: parent
            spacing: Theme.paddingLarge
            TextField {
                id: resField
                width: parent.width

            }

            Button {
                text: "Выбрать дату"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    var dialog = pageStack.push(dataComponent, {})
                    dialog.accepted.connect(function() {
                        resField.text = dialog.dateText
                        //console.log(dialog.timeText)
                    })
                }

                Component {
                    id: dataComponent
                    DatePickerDialog {}
                }
            }

            Button {
                text: "Выбрать время"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    var dialog = pageStack.push(timeComponent, {})
                    dialog.accepted.connect(function() {
                        resField.text = dialog.timeText
                        //console.log(dialog.timeText)
                    })
                }
                Component {
                    id: timeComponent
                    TimePickerDialog {}
                }
            }
        }
    }
//}
