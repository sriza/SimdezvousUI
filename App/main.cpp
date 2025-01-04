// Copyright (C) 2024 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "autogen/environment.h"
#include "mainsimulator.h"

int main(int argc, char *argv[])
{
    set_qt_environment();
    QGuiApplication app(argc, argv);



    QQmlApplicationEngine engine;

    // Exposing c++ object to qml
    MainSimulator *mainSimulator = new MainSimulator(&app);

    engine.rootContext()->setContextProperty("mainSimulator", mainSimulator);

    const QUrl url(mainQmlFile);
    QObject::connect(
                &engine, &QQmlApplicationEngine::objectCreated, &app,
                [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    engine.addImportPath(QCoreApplication::applicationDirPath() + "/qml");
    engine.addImportPath(":/");
    engine.load(url);

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
