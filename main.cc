#include <QApplication>
#include <QtWebEngineWidgets>
#include <QtPlugin>

//Q_IMPORT_PLUGIN(linuxfb)


/*  TODO
 *  add WebView markup (eg. link markup)(?)
 *  add ability to change webview content while app is running
 *  check if the URL is correct (-> if-else)
 */
int main(int argc, char* argv[])
{
  QApplication app(argc, argv);

  // Check arguments
  if(QCoreApplication::arguments().count() < 2)
    qFatal("Usage: noGUI [url with protocol]");

  // Load and show url
  QWebEngineView view;
  view.load(QUrl(QCoreApplication::arguments().at(1)));
  view.show();  // shows full screen on fbdev and EGLFS

  // Start browser
  return app.exec();
}
