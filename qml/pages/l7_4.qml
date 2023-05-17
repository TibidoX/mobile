import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Page {
    Mysign{
       id: lights
       red: r
       ylw: y
       grn: g
    }

    states: lights.lst
    Timer {
        interval: 2000; running: true; repeat: true
        onTriggered: {
            if (state == "Stop") state = "Attention";
            else if (state == "Attention") state = "Go";
            else if (state == "Go") state = "Attention_s";
            else state = "Stop";
        }
    }
    Image {
        id: h
        source: "image://theme/icon-cover-next"
        y:400; x:0;
        states: [State {
            name: "moved"; when: state == "Go"
            PropertyChanges { target: h; x: 700}
        },
            State {
            name: "stay"; when: state != "Go"
            PropertyChanges { target: h; x: 0}
        }
        ]

        transitions: Transition {
            from: "stay"; to: "moved"
            NumberAnimation { properties: "x";duration: 2000}
        }
    }
    Rectangle {
        id: r
        x: 25; y: 15
        width: 100; height: width
        radius: width/2
        color: "white"
        border.color: Qt.lighter(color, 1.1)
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        id: y
        x: 25; y: 135
        width: 100; height: width
        radius: width/2
        color: "white"
        border.color: Qt.lighter(color, 1.1)
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        id: g
        x: 25; y: 255
        width: 100; height: width
        radius: width/2
        color: "white"
        border.color: Qt.lighter(color, 1.1)
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Component.onCompleted: state = "Stop"
}
