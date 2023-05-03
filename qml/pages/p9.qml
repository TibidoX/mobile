import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

//Component {
//    id: p9
    Page {
        SilicaListView{
            PullDownMenu {
                id: m
                MenuItem {
                    text: "Опция 1"
                    onClicked: tf.text = text;
                }
                MenuItem {
                    text: "Опция 2"
                    onClicked: tf.text = text;
                }
            }

            TextField {
                id: tf
                anchors.horizontalCenter: parent.horizontalCenter
                text:""
            }

            PushUpMenu {
                id: mm
                MenuItem {
                    text: "Опция 1"
                    onClicked: tf.text = text;
                }
                MenuItem {
                    text: "Опция 2"
                    onClicked: tf.text = text;
                }
            }

//            TextField {
//                id: tf
//                anchors.horizontalCenter: parent.horizontalCenter
//                text:""
//            }

            anchors.fill: parent
            model: 0
        }
    }
//}
