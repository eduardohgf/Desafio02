#include "recebecomando.h"
#include <QCoreApplication>
#include <QDebug>
#include <QDBusMessage>
#include <QDBusConnection>
#include <QDBusInterface>

RecebeComando::RecebeComando()
{
    QDBusConnection::sessionBus().registerService("org.example.chat");
}

void RecebeComando::conectar(QString topico)
{
    QDBusConnection::sessionBus().connect("org.example.chat", topico, "org.example.chat", "message", this, SLOT(recebe(QString)));
}


void RecebeComando::recebe(QString msg1)
{
    emit messageReceived(msg1);
}
