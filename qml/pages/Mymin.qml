import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Item {
    id: minutes
    property int value: 0
    Label {
        id: l
        text: "00:"
        font.pixelSize: 100
    }
    onValueChanged: {
        if (value<10) l.text = "0"+value+":";
        else l.text = value+":";
    }
}
