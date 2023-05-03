import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    ConfigurationGroup {
        id: setting
        path: "/apps/app_name/setting_name"
        property string tf;
        property bool switcher;
    }

    TextField {
        id: textField
        anchors.verticalCenter: parent.verticalCenter
        onTextChanged: {
            setting.tf = textField.text;
        }
        Component.onCompleted: {
            textField.text = setting.tf;
        }
    }

    Switch {
        id: sw
        anchors {
            top: textField.bottom
            horizontalCenter: parent.horizontalCenter
        }
        onClicked: {
            setting.switcher = checked;
        }
        Component.onCompleted: {
            checked = setting.switcher;
        }
    }
}
