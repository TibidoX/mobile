import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Item {
    id: comp
    default property Item contents;
    property color col: "gray"

    anchors.fill: parent

    Button {
        backgroundColor: col
        anchors.fill: parent
        text: contents.text
    }
}
