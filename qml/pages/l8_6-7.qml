import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
import harbour.ru.auroraos.lab.TStringList 0.1

Page {
    TStringList {
        id: stringList
    }

    TextField {
        id: textField
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: btn1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:textField.bottom
        onClicked: stringList.add(textField.text.toLocaleLowerCase())
        text: "Добавить"
    }

    Button {
        id: btn2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:btn1.bottom
        onClicked: stringList.remove();
        text: "Удалить"
    }

    TextArea {
        width: parent.width
        anchors.bottom: parent.bottom
        font.pixelSize: 50
        text: stringList.text
        readOnly: true
    }
}
