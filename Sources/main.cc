#include <QApplication>
#include <QWebView>
#include <QtPlugin>


/*  TODO
*   Add WebView markup (eg. link markup)
*  Add ability to change webview content while app is running
*/

int main(int argc, char *argv[])
{
    //static helpers
    //Q_IMPORT_PLUGIN(webkitwidgets)

    if(argc <2) {
        perror("You need to specify a valid URL! | Eg: http://example.com");
      } else {
        char* url = argv[1] //get url from command line


    QApplication app(argc, argv);
    QWebView view;
    view.showFullScreen(); //show full screen... maybe add back to normal size ?
    view.load(QUrl(url));

    return app.exec();
  }
}
