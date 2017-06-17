CONFIG += static

QTPLUGIN += qlinuxfb

QT += core gui
QT += webenginewidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET   = noGui
TEMPLATE = app

SOURCES += main.cc
