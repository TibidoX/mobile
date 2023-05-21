import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
import QtGraphicalEffects 1.0

Page {
    Mysec {
        id: sec
        x:450

    }
    Mymin{
        id: mins
        x:300
    }
    Myh{
        id:hours
        x:150
    }

    Timer {
        id: timer
        interval: 1000; repeat: true
        onTriggered: {
            sec.value++;
            if (sec.value==60) {
                mins.value++;
                sec.value = 0;
            }
            if (mins.value==60) {
                hours.value++;
                mins.value = 0;
            }
        }
    }

    ProgressCircleBase{
        anchors.horizontalCenter: btn.horizontalCenter
        y: 50
        width: parent.width/2
        height: parent.height/2
        progressValue: 1/60*sec.value
    }

    Button {
        id: btn
        anchors.centerIn: parent
        text: "Старт"
        onClicked: {
            timer.running = !timer.running;
            if (timer.running) text = "Стоп"
            else text = "Старт"
        }
    }
}
