import QtQuick 2.0

Item
{
    property alias color: theRect.color;
    property string title: "default";
    property alias color_text: txt.color;

    Rectangle
    {
        id: theRect;

        Text
        {
            id: txt
            text: title
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        width: 720;
        height: 100;

        MouseArea {
            anchors.fill: parent
            onClicked: {
                myModel.remove(index);
            }
        }
    }
}
