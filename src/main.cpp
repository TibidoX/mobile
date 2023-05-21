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

#include <auroraapp.h>
#include <QtQuick>
#include <QGuiApplication>
//#include <sailfishapp.h>
#include <cassert>
#include <iostream>

#include "counter.h"
#include "tstringlist.h"

int main(int argc, char *argv[])
{
    QScopedPointer<QGuiApplication> application(Aurora::Application::application(argc, argv));
    application->setOrganizationName(QStringLiteral("ru.auroraos"));
    application->setApplicationName(QStringLiteral("lab"));

    QScopedPointer<QQuickView> view(Aurora::Application::createView());
    view->setSource(Aurora::Application::pathTo(QStringLiteral("qml/lab.qml")));
    view->show();

    const QMetaObject* staticObject = &Counter::staticMetaObject;
    QObject* object = staticObject->newInstance();
    int value = -1;
    assert(QMetaObject::invokeMethod(object, "get", Q_RETURN_ARG(int, value)));
    qDebug() << "Init value = " << value;

    assert(QMetaObject::invokeMethod(object, "inc"));
    assert(QMetaObject::invokeMethod(object, "get", Q_RETURN_ARG(int, value)));
    qDebug() << "increment = " << value;

    assert(QMetaObject::invokeMethod(object, "reset"));
    assert(QMetaObject::invokeMethod(object, "get", Q_RETURN_ARG(int, value)));
    qDebug() << "reset = " << value;

    assert(QMetaObject::invokeMethod(object, "set", Q_ARG(int, 777)));
    assert(QMetaObject::invokeMethod(object, "get", Q_RETURN_ARG(int, value)));
    qDebug() << "set = " << value;

    qmlRegisterType<Counter>("harbour.ru.auroraos.lab.Counter", 0, 1, "Counter");
    qmlRegisterType<TStringList>("harbour.ru.auroraos.lab.TStringList", 0, 1, "TStringList");
    return application->exec();
}
