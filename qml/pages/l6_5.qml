import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    ListView {
        width: parent.width; height: parent.height;

        delegate: Text {
            text: Name + ":\n" + Value
        }

        model: XmlListModel {
            id: xmlModel
            query: "/ValCurs/Valute"

            XmlRole { name: "Name"; query: "Name/string()" }
            XmlRole { name: "Value"; query: "Value/string()" }
        }

        Component.onCompleted: {
            var dataURI = "https://www.cbr-xml-daily.ru/daily_utf8.xml"
            var req = new XMLHttpRequest();
            req.onreadystatechange = function () {
                if (req.readyState == 4) {
                    xmlModel.xml = req.responseText;
                }
            };
            req.open("get", dataURI, true);
            req.send();
        }
    }
}
