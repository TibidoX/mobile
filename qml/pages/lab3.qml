import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    SilicaFlickable {
        anchors.fill: parent

        ColumnLayout {
            width: parent.width
            anchors {
                left:parent.left
                right: parent.right
                top: label_title.bottom
                margins: 50
            }

            Label {
                id: label_title
                Layout.fillWidth: true
                leftPadding: 30
                text: "Hello"
            }


//            Label {
//                id: label_titile
//                //Layout.fillWidth: true
//                leftPadding: 30
//                text: "Hello"
//            }

            TextField {
                id : field1
                //implicitWidth: parent.width/2+50
                Layout.fillWidth: true
                placeholderText: qsTr("Введи в меня число")
                inputMethodHints: Qt.ImhDigitsOnly
                label:qsTr("Подсказка")
            }


            Button {
                id: but1
                Layout.fillWidth: true
                text: qsTr("Кнопка")
                onClicked: {
                    but1._showPress = !but1._showPress
                    if (but1._showPress) {
                        but_label.text = "Нажата"
                    } else {
                        but_label.text = "Отпущена"
                    }
                }
            }

            Label {
                id : but_label
                anchors {
                    top : but1.bottom
                    horizontalCenter: but1.horizontalCenter
                }
                text : "Не нажата"
            }

            Button {
                id: but2
                property int counter: 0
                Layout.fillWidth: true
                text: qsTr("Нажата ")+parseInt(counter)+qsTr(" раз")
                onClicked: {counter++}
            }

            Button {
                id: calendar
                Layout.fillWidth: true
                text: qsTr("Выбрать дату")
                onClicked: {
                    var dialog = pageStack.push(pickerComponent, { date: new Date})
                    dialog.accepted.connect(function() {
                        calendar.text = dialog.dateText
                        console.log(dialog.dateText)
                    })
                }
                Component {
                    id: pickerComponent
                    DatePickerDialog {}
                }
            }

            Button {
                id: btn_time
                text: "Выберите время"
                Layout.fillWidth: true
                onClicked: {
                    var dialog = pageStack.push(timeComponent, {})
                    dialog.accepted.connect(function() {
                        btn_time.text = dialog.timeText
                        console.log(dialog.timeText)
                    })
                }
                Component {
                    id: timeComponent
                    TimePickerDialog {}
                }
            }

            ComboBox {
                id:comb
                Layout.fillWidth: true
                label: "Выпадающий список"

                menu: ContextMenu {
                    MenuItem { text: "Первый" }
                    MenuItem { text: "Второй" }
                    MenuItem { text: "Третий" }
                    onClicked: console.log(comb.currentItem.text)
                }
            }

            Switch {
                id: swt
                Layout.fillWidth: true
            }

            Label {
                text: (swt.checked ? "Включен" : "Выключен")
                Layout.fillWidth: true
            }


            Slider {
                id:sldr
                Layout.fillWidth: true
                handleVisible: true
                animateValue: true
                minimumValue: 0
                maximumValue: 10
                stepSize: 1
                value: 0
            }

            Label {
                text: "Текущее значение: " + sldr.value
                Layout.fillWidth: true
            }
        }
    }
}

