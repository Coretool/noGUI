QT       += core
QT       += webkitwidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = nos-gui
TEMPLATE = app

SOURCES += \
    main.cc

CONFIG += static
static {

    CONFIG += static
    QTPLUGIN       += minimal webkitwidgets

    DEFINES += STATIC
    message("Static build.")
}
