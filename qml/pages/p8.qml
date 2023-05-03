import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

//Component {
//    id: p8
    Page {
        SlideshowView {
            id: view
//                width: 480
//                height: 200
            itemWidth: parent.width
            itemHeight: parent.height

            model: 5
            delegate: Rectangle {
                width: view.itemWidth
                height: view.height
                border.width: 1

                Text {
                    anchors.centerIn: parent
                    text: "Дело" + index
                }
            }
         }
    }
//}
