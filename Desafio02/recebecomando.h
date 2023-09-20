#ifndef RECEBECOMANDO_H
#define RECEBECOMANDO_H

#include <iostream>
#include <QObject>
#include <QDBusInterface>
#include <QDebug>

class RecebeComando: public QObject
{
    Q_OBJECT
public:
    RecebeComando();


public slots:
    void conectar(QString topico);
    void recebe(QString msg1);

signals:
    void messageReceived(QString message);

};
#endif // RECEBECOMANDO_H
