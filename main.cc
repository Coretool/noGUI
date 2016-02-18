#include <QApplication>
#include <QWebView>
#include <QtPlugin>

//Q_IMPORT_PLUGIN(linuxfb)


/*  TODO
 *  add WebView markup (eg. link markup)(?)
 *  add ability to change webview content while app is running
 *  check if the URL is correct (-> if-else)
 */
int main(int argc, char *argv[])
{
  QApplication app(argc, argv);

  QWebView view;

  if(QCoreApplication::arguments().count() < 2)
    perror("You have to add url like http://example.com");
  else
  {
    view.show(); //shows full screen on fb and EGLFS
    view.load(QUrl(QCoreApplication::arguments().at(1)));

    return app.exec();
  }
}
