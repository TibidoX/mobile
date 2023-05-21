/*******************************************************************************
**
** Copyright (C) 2022 ru.auroraos
**
** This file is part of the Моё приложение для ОС Аврора project.
**
** Redistribution and use in source and binary forms,
** with or without modification, are permitted provided
** that the following conditions are met:
**
** * Redistributions of source code must retain the above copyright notice,
**   this list of conditions and the following disclaimer.
** * Redistributions in binary form must reproduce the above copyright notice,
**   this list of conditions and the following disclaimer
**   in the documentation and/or other materials provided with the distribution.
** * Neither the name of the copyright holder nor the names of its contributors
**   may be used to endorse or promote products derived from this software
**   without specific prior written permission.
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
** AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
** THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
** FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
** IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
** FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
** OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
** PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
** LOSS OF USE, DATA, OR PROFITS;
** OR BUSINESS INTERRUPTION)
** HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
** WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE)
** ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
** EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**
*******************************************************************************/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All
//    PageHeader {
//        objectName: "pageHeader"
//        title: qsTr("Template")
//        extraContent.children: [
//            IconButton {
//                objectName: "aboutButton"
//                icon.source: "image://theme/icon-m-about"
//                anchors.verticalCenter: parent.verticalCenter

//                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
//            }
//        ]
//    }

    ButtonLayout {

                id: btnLayout
//                Button {
//                    text: qsTr("Простой список")
//                    onClicked: pageStack.push(Qt.resolvedUrl("l6_1.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Динамический список")
//                    onClicked: pageStack.push(Qt.resolvedUrl("l6_2.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Простой список (js)")
//                    onClicked: pageStack.push(Qt.resolvedUrl("l6_3.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Курсы валют")
//                    onClicked: pageStack.push(Qt.resolvedUrl("l6_4.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Курсы валют (XMLHttpRequest)")
//                    onClicked: pageStack.push(Qt.resolvedUrl("l6_5.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("База данных")
//                    onClicked: pageStack.push(Qt.resolvedUrl("l6_6.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("ConfigurationValue")
//                    onClicked: pageStack.push(Qt.resolvedUrl("l6_7.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("ConfigurationGroup")
//                    onClicked: pageStack.push(Qt.resolvedUrl("l6_8.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Светофор")
//                    onClicked: pageStack.push(Qt.resolvedUrl("l7_4.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Строка")
//                    onClicked: pageStack.push(Qt.resolvedUrl("l7_3.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Доп валюты")
//                    onClicked: pageStack.push(Qt.resolvedUrl("l6_dop.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Компонент")
//                    onClicked: pageStack.push(Qt.resolvedUrl("l7_5.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Секундомер")
//                    onClicked: pageStack.push(Qt.resolvedUrl("l7_6.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Pagestack")
//                    onClicked: pageStack.push(Qt.resolvedUrl("l7_7.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

                Button {
                    text: qsTr("Счётчик")
                    onClicked: pageStack.push(Qt.resolvedUrl("l8_3-4.qml"))
                    backgroundColor: "white"
                    color: "black"
                }

                Button {
                    text: qsTr("Список строк")
                    onClicked: pageStack.push(Qt.resolvedUrl("l8_6-7.qml"))
                    backgroundColor: "white"
                    color: "black"
                }

//                Button {
//                    text: qsTr("Стек")
//                    onClicked: pageStack.push(Qt.resolvedUrl("p1.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Прикрепленная страница")
//                    onClicked: pageStack.push(Qt.resolvedUrl("p2.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Ввод текста")
//                    onClicked: pageStack.push(Qt.resolvedUrl("p3.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }



//                Button {
//                    text: qsTr("Выбор даты и времени")
//                    onClicked: pageStack.push(Qt.resolvedUrl("p4_5.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Список")
//                    onClicked: pageStack.push(Qt.resolvedUrl("p6.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Сайт")
//                    onClicked: pageStack.push(Qt.resolvedUrl("p7.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Слайды")
//                    onClicked: pageStack.push(Qt.resolvedUrl("p8.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Вытягиваемое меню")
//                    onClicked: pageStack.push(Qt.resolvedUrl("p9.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }

//                Button {
//                    text: qsTr("Контекстное меню")
//                    onClicked: pageStack.push(Qt.resolvedUrl("p10.qml"))
//                    backgroundColor: "white"
//                    color: "black"
//                }
    }
}
