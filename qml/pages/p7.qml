import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

//Component {
//    id: p7
    Page {
        SilicaWebView {
                id: webView

                anchors {
                    top: parent.top
                    left: parent.left
                    right: parent.right
                    bottom: urlField.top
                }
                url: "http://google.com"
                onUrlChanged: {
                    var request;
                    //if(window.XMLHttpRequest)
                        request = new XMLHttpRequest();
                    //else
                        //request = new ActiveXObject("Microsoft.XMLHTTP");
                    request.open('GET', url, false);
                    request.send(); // there will be a 'pause' here until the response to come.
                    // the object request will be actually modified
                    if (request.status === 0) {
                        //alert("The page you are trying to reach is not available.");
                        //console.log("The page you are trying to reach is not available.")
                        console.log("invalid url")
                    }
                }
            }

            TextField {
                id: urlField
                anchors {
                    left: parent.left
                    right: parent.right
                    bottom: parent.bottom
                }
                inputMethodHints: Qt.ImhUrlCharactersOnly
                text: "http://google.com"
                label: webView.title
                EnterKey.onClicked: {
                    webView.url = text
                    parent.focus = true
                }
//                onTextChanged: {
//                    var request;
//                    //if(window.XMLHttpRequest)
//                        request = new XMLHttpRequest();
//                    //else
//                        //request = new ActiveXObject("Microsoft.XMLHTTP");
//                    request.open('GET', urlField.text, false);
//                    request.send(); // there will be a 'pause' here until the response to come.
//                    // the object request will be actually modified
//                    if (request.status === 0) {
//                        //alert("The page you are trying to reach is not available.");
//                        //console.log("The page you are trying to reach is not available.")
//                        //console.log(request.status)
//                        console.log("invalid url")
//                    }
//                }
            }
    }

