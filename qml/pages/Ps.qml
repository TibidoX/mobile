import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
//Component {
//    id: pageComponent
Page {
    id: startPage

    allowedOrientations: Orientation.All

    property int prevDepth
    property int pushPages : 0
    property int popPages : 0

    function onDepthChangedMy()
    {
        if (prevDepth === undefined)
            pushPages++;
        else
        {
            if(prevDepth > pageStack.depth)
            {
                popPages++;
            }
            else
            {
                pushPages++;
            }
        }
        prevDepth = pageStack.depth
        console.log("Добавлено: " + pushPages);
        console.log("Удалено: " + popPages);
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

    Component.onCompleted:
    {
        pageStack.onDepthChanged.connect(onDepthChangedMy)
    }
}
