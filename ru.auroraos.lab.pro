################################################################################
##
## Copyright (C) 2022 ru.auroraos
## 
## This file is part of the Моё приложение для ОС Аврора project.
##
## Redistribution and use in source and binary forms,
## with or without modification, are permitted provided
## that the following conditions are met:
##
## * Redistributions of source code must retain the above copyright notice,
##   this list of conditions and the following disclaimer.
## * Redistributions in binary form must reproduce the above copyright notice,
##   this list of conditions and the following disclaimer
##   in the documentation and/or other materials provided with the distribution.
## * Neither the name of the copyright holder nor the names of its contributors
##   may be used to endorse or promote products derived from this software
##   without specific prior written permission.
##
## THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
## AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
## THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
## FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
## IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
## FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
## OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
## PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
## LOSS OF USE, DATA, OR PROFITS;
## OR BUSINESS INTERRUPTION)
## HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
## WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
## (INCLUDING NEGLIGENCE OR OTHERWISE)
## ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
## EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
##
################################################################################

TARGET = ru.auroraos.lab

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    ../../lab/qml/pages/lab5.qml \
    qml/pages/Cb.qml \
    qml/pages/DAO.qml \
    qml/pages/Help_page.qml \
    qml/pages/Myh.qml \
    qml/pages/Mymin.qml \
    qml/pages/Myrect.qml \
    qml/pages/Mysec.qml \
    qml/pages/Mysign.qml \
    qml/pages/Ps.qml \
    qml/pages/Textcomponent.qml \
    qml/pages/l6_1.qml \
    qml/pages/l6_2.qml \
    qml/pages/l6_3.qml \
    qml/pages/l6_4.qml \
    qml/pages/l6_5.qml \
    qml/pages/l6_6.qml \
    qml/pages/l6_7.qml \
    qml/pages/l6_8.qml \
    qml/pages/l6_dop.qml \
    qml/pages/l7_1-2.qml \
    qml/pages/l7_3.qml \
    qml/pages/l7_4.qml \
    qml/pages/l7_5.qml \
    qml/pages/l7_6.qml \
    qml/pages/l7_7.qml \
    qml/pages/lab3.qml \
    qml/pages/lab5_for_otchet.qml \
    qml/pages/p1.qml \
    qml/pages/p10.qml \
    qml/pages/p2.qml \
    qml/pages/p3.qml \
    qml/pages/p4_5.qml \
    qml/pages/p6.qml \
    qml/pages/p7.qml \
    qml/pages/p8.qml \
    qml/pages/p9.qml \
    qml/pages/script.js \
    qml/t6.qml \
    rpm/ru.auroraos.lab.spec \
    AUTHORS.md \
    CODE_OF_CONDUCT.md \
    CONTRIBUTING.md \
    LICENSE.BSD-3-CLAUSE.md \
    README.md \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.auroraos.lab.ts \
    translations/ru.auroraos.lab-ru.ts \

RESOURCES += \
    img.qrc
