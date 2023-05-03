///*******************************************************************************
//**
//** Copyright (C) 2022 ru.auroraos
//**
//** This file is part of the Моё приложение для ОС Аврора project.
//**
//** Redistribution and use in source and binary forms,
//** with or without modification, are permitted provided
//** that the following conditions are met:
//**
//** * Redistributions of source code must retain the above copyright notice,
//**   this list of conditions and the following disclaimer.
//** * Redistributions in binary form must reproduce the above copyright notice,
//**   this list of conditions and the following disclaimer
//**   in the documentation and/or other materials provided with the distribution.
//** * Neither the name of the copyright holder nor the names of its contributors
//**   may be used to endorse or promote products derived from this software
//**   without specific prior written permission.
//**
//** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//** AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
//** THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
//** FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
//** IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//** FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
//** OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
//** PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
//** LOSS OF USE, DATA, OR PROFITS;
//** OR BUSINESS INTERRUPTION)
//** HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
//** WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//** (INCLUDING NEGLIGENCE OR OTHERWISE)
//** ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
//** EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//**
//*******************************************************************************/

//import QtQuick 2.0
//import Sailfish.Silica 1.0

//ApplicationWindow {
//    objectName: "applicationWindow"
//    //initialPage: Qt.resolvedUrl("pages/MainPage.qml")
//    initialPage: Qt.resolvedUrl("pages/lab5.qml")
//    cover: Qt.resolvedUrl("cover/DefaultCoverPage.qml")
//    allowedOrientations: defaultAllowedOrientations
//}

import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

ApplicationWindow {
    objectName: "page stack"
    initialPage: Qt.resolvedUrl("pages/MainPage.qml")
    Component {
        id: pageComponent
        Page {
            Column {
                width: parent.width
                anchors.centerIn: parent
                spacing: Theme.paddingLarge

                Button {
                    text: "Вперед"
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: {
                        pageStack.push(pageComponent)
                    }
                }

                Button {
                    text: "Назад"
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: {
                        pageStack.pop()
                    }
                }

                Label {
                    text: "Глубина стека: " + pageStack.depth
                }
            }
        }
    }

    Component {
        id: a
        Page {
           Column {
               width: parent.width
               anchors.centerIn: parent
               spacing: Theme.paddingLarge

               Button {
                   text: "Назад"
                   anchors.horizontalCenter: parent.horizontalCenter
                   onClicked: {
                       pageStack.navigateBack()
                   }
               }
           }
        }
    }

    Component {
        id: p2
        Page {
            Column {
                width: parent.width
                anchors.centerIn: parent
                spacing: Theme.paddingLarge

                Button {
                    text: "Добавить страницу"
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: {
                        pageStack.pushAttached(a)
                    }
                }

                Button {
                    text: "Убрать страницу"
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: {
                        pageStack.popAttached()
                    }
                }
            }
        }
    }

    Component {
        id: dlg
        //property string t: ""
        Dialog {
            id:d
            DialogHeader {
                id: header
                title: "Confirm deletion"
            }
            TextField {
                id: textField
                width: parent.width
            }

            onAccepted: {
                //pageStack.pop()
                //resField.text = textField.text
                t = textField.text;
            }
        }
    }

    property string t: ""

    Component {
        id: p3
        Page {
            id: pg
            Column {
                width: parent.width
                anchors.centerIn: parent
                spacing: Theme.paddingLarge
                TextField {
                    id: resField
                    width: parent.width

                }

                Button {
                    text: "Ввести текст"
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: {
                        var dialog = pageStack.push(dlg, {})
                        dialog.accepted.connect(function() {
                            resField.text = t;
                        })
                    }
                }
            }
        }
    }

    Component {
        id: p4
        Page {
            id: pg
            Column {
                width: parent.width
                anchors.centerIn: parent
                spacing: Theme.paddingLarge
                TextField {
                    id: resField
                    width: parent.width

                }

                Button {
                    text: "Выбрать дату"
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: {
                        var dialog = pageStack.push(dataComponent, {})
                        dialog.accepted.connect(function() {
                            resField.text = dialog.dateText
                            //console.log(dialog.timeText)
                        })
                    }

                    Component {
                        id: dataComponent
                        DatePickerDialog {}
                    }
                }
            }
        }
    }

    Component {
        id: p5
        Page {
            id: pg
            Column {
                width: parent.width
                anchors.centerIn: parent
                spacing: Theme.paddingLarge
                TextField {
                    id: resField
                    width: parent.width

                }

                Button {
                    text: "Выбрать время"
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: {
                        var dialog = pageStack.push(timeComponent, {})
                        dialog.accepted.connect(function() {
                            resField.text = dialog.timeText
                            //console.log(dialog.timeText)
                        })
                    }
                    Component {
                        id: timeComponent
                        TimePickerDialog {}
                    }
                }
            }
        }
    }

    Component {
        id: p6
        Page {
            SilicaListView {
                width: 480; height: 800
                model: ListModel {
                     ListElement { task: "Дел нет (спать)"; date:"19.08.2023"}
                     ListElement { task: "Очень важное дело"; date:"22.03.2029"}
                     ListElement { task: "Страх какое важное дело"; date:"22.03.2029"}
                     ListElement { task: "Ну очень важное дело"; date:"21.03.2030"}
                     ListElement { task: "Важное дело"; date:"21.03.2030"}
                }

                delegate: Component {
                    id: nameDelegate
                    Text {
                        text: task;
                        font.pixelSize: 50
                        anchors.left: parent.left
                        anchors.leftMargin: 2
                    }
                }

                section {
                    property: "date"
                    criteria: ViewSection.FullString;
                    delegate: Rectangle {
                        color: "#b0dfb0"
                        width: parent.width
                        height: childrenRect.height + 4
                        Text { anchors.horizontalCenter: parent.horizontalCenter
                            font.pixelSize: 40
                            font.bold: true
                            text: section
                        }
                    }
                }
            }
        }
    }

    Component {
        id: p7
        Page {
            SilicaWebView {
                id: webView

                anchors {
                    top: parent.top
                    left: parent.left
                    right: parent.right
                    bottom: parent.bottom
                }
                url: "http://google.com"
            }
        }
    }

    Component {
        id: p8
        Page {
            SlideshowView {
                id: view
//                width: 480
//                height: 200
                itemWidth: parent.width
                itemHeight: parent.height

                model: 5
                delegate: Rectangle {
                    width: view.itemWidth
                    height: view.height
                    border.width: 1

                    Text {
                        anchors.centerIn: parent
                        text: "Дело" + index
                    }
                }
             }
        }
    }

    Component {
        id: p9
        Page {
            SilicaListView{
                PullDownMenu {
                    id: m
                    MenuItem {
                        text: "Опция 1"
                        onClicked: tf.text = text;
                    }
                    MenuItem {
                        text: "Опция 2"
                        onClicked: tf.text = text;
                    }
                }

                TextField {
                    id: tf
                    anchors.horizontalCenter: parent.horizontalCenter
                    text:""
                }

                anchors.fill: parent
                model: 0
            }
        }
    }

    Component {
        id: p10
        Page {
            SilicaListView {
                anchors.fill: parent

                model: ListModel {
                    id: listModel
                    Component.onCompleted: {
                        for (var i=0; i<10; i++) {
                            append({"name": "Item " + i})
                        }
                    }
                }

                delegate: ListItem {
                    width: ListView.view.width

                    Label {
                        id: label
                        text: model.name
                        anchors.centerIn: parent
                    }

                    menu: ContextMenu {
                        MenuItem {
                            text: "Опция1"
                            onClicked: console.log(text, model.index)
                        }
                        MenuItem {
                            text: "Опция2"
                            onClicked: console.log(text, model.index)
                        }
                    }
                }
            }
        }
    }

    cover: Component {
        Cover {
            transparent: true
            property int counter: 0

            Column {
                width: parent.width
                anchors.centerIn: parent
                spacing: Theme.paddingLarge
                Label {
                    id: cnt
                    text: parseInt(counter)
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                CoverActionList {
                    CoverAction {
                        iconSource: "image://theme/icon-cover-next"
                        onTriggered: {
                            counter = 0;
                            cnt.text = parseInt(counter);
                        }
                    }
                    CoverAction {
                        iconSource: "image://theme/icon-cover-next"
                        onTriggered: {
                            counter++;
                            cnt.text = parseInt(counter);
                        }
                    }
                }
            }
        }
    }
}

