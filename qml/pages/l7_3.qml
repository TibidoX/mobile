import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
import QtGraphicalEffects 1.0
Page {
    Label {
        id: l
        y:10
        color: "black"
        font.pixelSize: 100
        transform: Rotation{
            angle: 0
        }
        property double sa: 0
        property double fa: 180
        property bool f: true
        text: "Hello, World!"
        anchors{
            horizontalCenter: parent.horizontalCenter;
        }
        MouseArea {
            id: area
            anchors.fill: parent
            onPressed: {
                //var t = l.sa;
                l.sa = 0;
                l.fa = 180;
            }
            onReleased: {
                //var t = l.sa;
                l.sa = 180;
                l.fa = 0;
            }
        }
        states: [State {
            name: "moved"; when: area.pressed
            PropertyChanges { target: l; y: 1150; color:"red" }
        }
        ]

        transitions: Transition {
            NumberAnimation { properties: "y"; duration:5000 }
            RotationAnimation {
               target: l;
               from: l.sa
               to: l.fa
               duration: 5000
            }
            ColorAnimation { duration: 5000 }
        }
    }
}
