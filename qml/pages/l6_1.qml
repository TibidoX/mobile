import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Page {
    ListModel
    {
        id:  myModel;

        ListElement { name: "Белый"; col: "white"; col_txt: "black"}
        ListElement { name: "Черный"; col: "black"; col_txt: "white"}
        ListElement { name: "Синий"; col: "blue"; col_txt: "pink"}
    }
    ListView
    {
        model: myModel;
        delegate: myRectComp;
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
            color: col;
            color_text: col_txt;
            title: name;
        }
    }
}
