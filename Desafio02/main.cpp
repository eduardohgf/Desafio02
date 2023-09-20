#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "recebecomando.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    RecebeComando comando;          //Instancia da Classe RecebeComando

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);

    QQmlContext * rootContext = engine.rootContext();           // Instancia a classe Carrega Arquivo no contexto QML, o que permite acessar o método lerArquivo(0
    rootContext->setContextProperty("comando", &comando);

    return app.exec();
}
