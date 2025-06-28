#ifndef MYAPP_H
#define MYAPP_H

#include <QObject>
#include <QQmlEngine>
class MyApp : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    QML_SINGLETON
public:
    explicit MyApp(QObject *parent = nullptr);
    static bool isMobile();
signals:
};

#endif // MYAPP_H
