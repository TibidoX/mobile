import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Page {
    property var dataModel: [
        {
            color: "white",
            color_text: "black",
            name: "Белый"
        },
        {
            color: "black",
            color_text: "white",
            name: "Черный"
        },
        {
            color: "blue",
            color_text: "pink",
            name: "Синий"
        }

    ]

    ListView
    {
        model: dataModel;
        delegate: Rectangle {
            width: parent.width
            height: 100
            color: modelData.color

            Text {
                anchors.centerIn: parent
                renderType: Text.NativeRendering
                text: modelData.name
                color: modelData.color_text
            }
        }

        width: parent.width
        height: parent.height
        spacing: 10
        orientation:  Qt.Vertical
    }
}
