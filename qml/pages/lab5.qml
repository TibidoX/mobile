import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

ApplicationWindow {
    objectName: "page stack"
    initialPage: pageComponent
    Component {
        id: pageComponent
        Page {
//            PageHeader {
//                title: "Page count: " + pageStack.depth
//            }
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
                }
            }
        }
    }

//    Component {
//        id: ass
//        Page {
//           Column {
//               width: parent.width
//               anchors.centerIn: parent
//               spacing: Theme.paddingLarge

//               Button {
//                   text: "Назад"
//                   anchors.horizontalCenter: parent.horizontalCenter
//                   onClicked: {
//                       pageStack.previousPage()
//                   }
//               }
//           }
//        }
//    }
//    Component {
//        id: p2
//        Page {
//            Column {
//                width: parent.width
//                anchors.centerIn: parent
//                spacing: Theme.paddingLarge

//                Button {
//                    text: "Добавить страницу"
//                    anchors.horizontalCenter: parent.horizontalCenter
//                    onClicked: {
//                        pageStack.pushAttached(ass)
//                    }
//                }

//                Button {
//                    text: "Убрать страницу"
//                    anchors.horizontalCenter: parent.horizontalCenter
//                    onClicked: {
//                        pageStack.popAttached(ass)
//                    }
//                }
//            }
//        }
//    }
}
