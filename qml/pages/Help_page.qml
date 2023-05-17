import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Component {
    id: help_page
    Page {
        id: pg
        property int ins: 0
        property int del: 0
        property int _depth: 0
        Label {
            id: inserted
            text:"Добавлено: "+ins;
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Label {
            id: deleted
            text:"Удалено: "+del;
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: inserted.bottom
        }
        Button {
            id: add
            text: "Добавить"
            onClicked: {
                pageStack.push(pageComponent)
            }
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: deleted.bottom
        }
        Button {
            text: "Удалить"
            onClicked: {
                pageStack.pop();
            }
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: add.bottom
        }

        function onDepthChangedMy()
        {
            if(_depth > pageStack.depth) {
                del++;
            }
            else {
                ins++;
            }
            _depth = pageStack.depth
            console.log(del);
            console.log(ins);
        }


        Component.onCompleted: {
            pageStack.onDepthChanged.connect(onDepthChangedMy)
            console.log(pageStack.depth)
        }
    }
}
