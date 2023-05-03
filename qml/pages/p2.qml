import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

//Component {
//    id: p2
    Page {
        Column {
            width: parent.width
            anchors.centerIn: parent
            spacing: Theme.paddingLarge

            Button {
                text: "Добавить страницу"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    pageStack.pushAttached(a)
                }
            }

            Button {
                text: "Убрать страницу"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    pageStack.popAttached()
                }
            }
        }

        Component {
            id: a
            Page {
               Column {
                   width: parent.width
                   anchors.centerIn: parent
                   spacing: Theme.paddingLarge

                   Button {
                       text: "Назад"
                       anchors.horizontalCenter: parent.horizontalCenter
                       onClicked: {
                           pageStack.navigateBack()
                       }
                   }
               }
            }
        }
    }
//}
