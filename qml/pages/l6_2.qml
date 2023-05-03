import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0


Page {
    property int count: 1

    ListModel
    {
        id:  myModel;
    }
    ListView
    {
        model: myModel;
        delegate: myRectComp;
        y:100
        width: parent.width
        height: parent.height
        spacing: 100
        orientation:  Qt.Vertical
    }

    Component
    {
        id: myRectComp;
        Myrect
        {
            title: name;
        }
    }
    Button {
        text: qsTr("Это кнопка!")
        backgroundColor: "white"
        color: "black"
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: {
            myModel.append({name: count});
            count++;
        }
    }
}
