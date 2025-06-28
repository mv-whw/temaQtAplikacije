#include "myapp.h"

MyApp::MyApp(QObject *parent)
    : QObject{parent}
{}

bool MyApp::isMobile()
{
    return true;
}
