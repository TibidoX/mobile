import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Page {
    Item {
        anchors.horizontalCenter: parent.horizontalCenter
        id: lights
        states: [
            State {
                name: "Stop"
                PropertyChanges {
                    target: red
                    color: "red"
                }
                PropertyChanges {
                    target: ylw
                    color: "white"
                }
                PropertyChanges {
                    target: grn
                    color: "white"
                }
            },
            State {
                name: "Attention"
                PropertyChanges {
                    target: red
                    color: "red"
                }
                PropertyChanges {
                    target: ylw
                    color: "yellow"
                }
                PropertyChanges {
                    target: grn
                    color: "white"
                }
            },
            State {
                name: "Attention_s"
                PropertyChanges {
                    target: red
                    color: "white"
                }
                PropertyChanges {
                    target: ylw
                    color: "yellow"
                }
                PropertyChanges {
                    target: grn
                    color: "white"
                }
            },
            State {
                name: "Go"
                PropertyChanges {
                    target: red
                    color: "white"
                }
                PropertyChanges {
                    target: ylw
                    color: "white"
                }
                PropertyChanges {
                    target: grn
                    color: "green"
                }
            }
        ]

        Timer {
            interval: 2000; running: true; repeat: true
            onTriggered: {
                if (lights.state == "Stop") lights.state = "Attention";
                else if (lights.state == "Attention") lights.state = "Go";
                else if (lights.state == "Go") lights.state = "Attention_s";
                else lights.state = "Stop";
            }
        }
        Component.onCompleted: {
            lights.state = "Stop";
        }

        Image {
            id: h
            source: "image://theme/icon-cover-next"
            y:400; x:-350;
            states: [State {
                name: "moved"; when: lights.state == "Go"
                PropertyChanges { target: h; x: 300}
            },
                State {
                name: "stay"; when: lights.state != "Go"
                PropertyChanges { target: h; x: -350}
            }
            ]

            transitions: Transition {
                from: "stay"; to: "moved"
                NumberAnimation { properties: "x";duration: 2000}
            }
        }


        Rectangle {
            id: red
            x: 25; y: 15
            width: 100; height: width
            radius: width/2
            color: "white"
            border.color: Qt.lighter(color, 1.1)
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            id: ylw
            x: 25; y: 135
            width: 100; height: width
            radius: width/2
            color: "white"
            border.color: Qt.lighter(color, 1.1)
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            id: grn
            x: 25; y: 255
            width: 100; height: width
            radius: width/2
            color: "white"
            border.color: Qt.lighter(color, 1.1)
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
