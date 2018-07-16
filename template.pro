TEMPLATE = app

TARGET = %ProjectName%

QT += qml quick

CONFIG += link_pkgconfig
PKGCONFIG += glacierapp

LIBS += -lglacierapp

SOURCES += src/main.cpp

DISTFILES += qml/%ProjectName%.qml \
    qml/pages/MainPage.qml \
    rpm/%ProjectName%.spec \
    translations/*.ts \
    %ProjectName%.desktop

TRANSLATIONS += translations/%ProjectName%-ru.ts

i18n_files.files = translations
i18n_files.path = /usr/share/$$TARGET
INSTALLS += i18n_files


target.path = /usr/bin

icon.files = icons/$$TARGET.png
icon.path = /usr/share/$$TARGET/

desktop.files = %ProjectName%.desktop
desktop.path = /usr/share/applications

qml.files = qml/*
qml.path = /usr/share/$$TARGET/qml

INSTALLS += target desktop qml icon i18n_files
