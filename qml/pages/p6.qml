import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

//Component {
//    id: p6
    Page {
        SilicaListView {
            width: 480; height: 800
            model: ListModel {
                 ListElement { task: "Дел нет (спать)"; date:"19.08.2023"}
                 ListElement { task: "Очень важное дело"; date:"22.03.2029"}
                 ListElement { task: "Страх какое важное дело"; date:"22.03.2029"}
                 ListElement { task: "Ну очень важное дело"; date:"21.03.2030"}
                 ListElement { task: "Важное дело"; date:"21.03.2030"}
            }

            delegate: Component {
                id: nameDelegate
                Text {
                    text: task;
                    font.pixelSize: 50
                    anchors.left: parent.left
                    anchors.leftMargin: 2
                }
            }

            section {
                property: "date"
                criteria: ViewSection.FullString;
                delegate: Rectangle {
                    color: "#b0dfb0"
                    width: parent.width
                    height: childrenRect.height + 4
                    Text { anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 40
                        font.bold: true
                        text: section
                    }
                }
            }
        }
    }
//}
