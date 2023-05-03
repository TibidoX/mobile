import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    ConfigurationValue {
        id: setting
        key: "/apps/app_name/setting_name"
        defaultValue: "Default"
    }

    TextField {
        id: textField
        anchors.verticalCenter: parent.verticalCenter
        onTextChanged: {
            updater();
        }
        Component.onCompleted: {
            textField.text = setting.value[0]
            console.log(setting.value[1], setting.value[0])
        }
    }

    Switch {
        id: sw
        anchors {
            top: textField.bottom
            horizontalCenter: parent.horizontalCenter
        }
        onClicked: {
            updater();
            console.log(setting.value[1], setting.value[0])
        }
        Component.onCompleted: {
//            if (setting.value[1]===true) checked = true;
//            else checked = false;
            checked = setting.value[1];
        }
    }


    function updater() {
        setting.value = [textField.text, sw.checked]
    }
}



//Page {
//    ConfigurationValue {
//        id: setting
//        key: "/apps/app_name/setting_name"
//        defaultValue: "Default"
//    }

//    TextField {
//        id: textField
//        anchors.verticalCenter: parent.verticalCenter
//        onTextChanged: {
//            updater();
//        }
//        Component.onCompleted: {
//            textField.text = setting.value[0]
//        }
//    }

//    Button {
//        id: cb
//        property string checked: "0"
//        width: 100
//        height: 24
//        color: "black"
//        anchors {
//            top: textField.bottom
//            horizontalCenter: parent.horizontalCenter
//        }
//        onClicked: {
//            if (checked === "0") {
//                checked = "1"
//            } else {
//                checked = "0"
//            }
//            updater();
//            //checked = !checked;
//            if (checked === "1") {
//                cb.text = "X"
//            } else {
//                cb.text = ""
//            }

//        }
//        Component.onCompleted: {
//            if (setting.value[1]==="1") {
//                cb.text = "X"
//            } else {
//                cb.text = ""
//            }
//        }
//    }

//    function updater() {
//        setting.value = [textField.text, cb.checked]
//    }
//}
