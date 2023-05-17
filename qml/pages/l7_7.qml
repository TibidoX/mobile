import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
//Component {
//    id: pageComponent
Page {
    id: l7

    allowedOrientations: Orientation.All

    property int prevDepth
    property int ins : 0
    property int del : 0

    function onDepthChangedMy()
    {
//        if (prevDepth === undefined)
//            ins++;
        //else
        {
            if(prevDepth > pageStack.depth)
            {
                del++;
            }
            else
            {
                ins++;
            }
        }
        prevDepth = pageStack.depth
        console.log("Добавлено: " + ins);
        console.log("Удалено: " + del);
    }
    Button {
        id: a
        text: "Добавить"
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: pageStack.push(pg)
    }
    Button {
        text: "Удалить"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: a.bottom
        onClicked: pageStack.pop()
    }
    Component{
        id: pg
        Page{}
    }

    Component.onCompleted:
    {
        pageStack.onDepthChanged.connect(onDepthChangedMy)
    }
}
