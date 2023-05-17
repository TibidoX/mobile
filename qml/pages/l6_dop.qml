import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0
import QtGraphicalEffects 1.0
import QtQuick.XmlListModel 2.0

//Page{
//    Canvas {
//        id: mycanvas
//        width: 100
//        height: 200
//        onPaint: {
//            var ctx = getContext("2d");
//            ctx.fillStyle = Qt.rgba(1, 0, 0, 1);
//            ctx.fillRect(0, 0, width, height);
//        }
//    }
//}

Page {
    property var vals:[]
    property var args:[]
//    ListView {
//        width: parent.width; height: parent.height;

//        delegate: Text {
//            text: Name + ":\n" + Value
//        }
//        model: XmlListModel {
//            id: xmlModel
//            query: "/ValCurs/Valute"

//            XmlRole { name: "Name"; query: "Name/string()" }
//            XmlRole { name: "Value"; query: "Value/string()" }
//            onStatusChanged: {
//                if (xmlModel.status==1) {
//                    for (var i = 0; i < xmlModel.count; i++) {
//                        vals.push(xmlModel.get(i).Value);
//                        console.log(vals[i])
//                    }
//                    mycanvas.requestPaint();
//                }
//            }
//        }

//        Component.onCompleted: {
//            var dataURI = "https://www.cbr-xml-daily.ru/daily_utf8.xml"
//            var req = new XMLHttpRequest();
//            req.onreadystatechange = function () {
//                if (req.readyState == 4) {
//                    xmlModel.xml = req.responseText;
//                }
//            };
//            req.open("get", dataURI, true);
//            req.send();
//        }
//    }

    Canvas {
        id: mycanvas
        width: parent.width
        height: parent.height
        onPaint: {
            var ctx = getContext("2d");
            ctx.fillStyle = Qt.rgba(0, 0, 0, 1);
            var th = height/10
            for (var j = 1; j < 12; j++) {
                ctx.moveTo(0,j*100);
                ctx.lineTo(width, j*100);
                ctx.lineWidth = 1;
                ctx.strokeStyle = '#000000';
                ctx.stroke();
                ctx.font = "48px serif";
                ctx.fillText((12-j)*10, 10, j*100-20);
            }

            for (var k = 12; k > 0; k--) {
//                ctx.font = "48px serif";
//                ctx.fillText(k*10, 10, k*100-20);
            }

            ctx.beginPath();
            //var ctx1 = getContext("2d")
            for (var i = 1; i < vals.length; i++) {
                ctx.moveTo(args[i-1], vals[i-1]*10);
                console.log(vals[i])
                ctx.lineTo(args[i], vals[i]*10);
                ctx.lineWidth = 7;
                ctx.strokeStyle = '#ff0000';
                ctx.stroke();
            }
//            var t = vals[0]*10;
//            ctx.moveTo(0,t);
//            ctx.lineTo(17, 470)
//            ctx.lineWidth = 10;
//            ctx.strokeStyle = '#ff0000';
//            ctx.stroke();
//            console.log(width)
//            console.log(height)
//            console.log(t)
//            console.log(args[1])
        }

        XmlListModel {
            id: xmlModel
            source: "http://www.cbr.ru/scripts/XML_daily.asp"
            query: "/ValCurs/Valute"

            XmlRole { name: "Name"; query: "Name/string()" }
            XmlRole { name: "Value"; query: "Value/string()" }
            onStatusChanged: {
                if (xmlModel.status==1) {
                    for (var i = 0; i < xmlModel.count; i++) {
                        vals.push(parseFloat(xmlModel.get(i).Value));
                        console.log(vals[i])
                    }
                    mycanvas.requestPaint();
                }
            }
        }
    }
    Component.onCompleted: {
        var t = width/42
        for (var i = 0; i < 42; i++) {
            args.push(i*t);
        }
    }
}
