QTPLUGIN             += core gui
QTPLUGIN             += webkitwidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = noGui
TEMPLATE = app

SOURCES += \
    Sources/main.cc

CONFIG += static
static {

    CONFIG += static
    QTPLUGIN += core gui webkitwidgets

    DEFINES += STATIC
    message("Static build.")
}
