import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
//Component {
//    id: pageComponent
    Page {
        Column {
            width: parent.width
            anchors.centerIn: parent
            spacing: Theme.paddingLarge

            Button {
                text: "Вперед"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    pageStack.push(pageComponent)
                }
            }

            Button {
                text: "Назад"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    pageStack.pop()
                }
            }

            Label {
                text: "Глубина стека: " + pageStack.depth
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
//}
