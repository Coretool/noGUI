#include <QApplication>
#include <QWebView>
#include <QtPlugin>



/*  TODO
*  add WebView markup (eg. link markup)(?)
*  add ability to change webview content while app is running
*  check if the URL is correct (-> if-else)
*/

int main(int argc, char *argv[])
{
    //static only
    Q_IMPORT_PLUGIN(webview);
    Q_IMPORT_PLUGIN(core);

    QApplication app(argc, argv);
    QWebView view;

    view.show(); //shows full screen on fb and EGLFS
    view.load(QUrl(QCoreApplication::arguments().at(1)));

    return app.exec();

}
