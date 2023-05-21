import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
import harbour.ru.auroraos.lab.Counter 0.1

Page {
    Counter {
        id: counter
        value: 1
    }

    Label {
        id: label
        anchors.horizontalCenter: parent.horizontalCenter
        text: counter.value;
    }

    Button {
        id: btn1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: label.bottom
        text: "Увеличить"
        onClicked: counter.inc();
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: btn1.bottom
        text: "Сбросить"
        onClicked: counter.reset();
    }
}
