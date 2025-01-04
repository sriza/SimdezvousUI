#include "mainsimulator.h"
#include <cmath>
#include <stdio.h>


MainSimulator::MainSimulator(QObject *parent)
    : QObject{parent}
{
    q0 = 1;
    q1 = 3;
    q2 = 6;
    q3 = 4;

    // Connect timer to update simulation
    connect(&simulationTimer, &QTimer::timeout, this, &MainSimulator::updateSimulation);

    simulationTimer.start(16); // 60 FPS
}

void MainSimulator::updateSimulation() {
    double theta = getQ1() * 10;
    setQ0(cos(theta/2.0));
    setQ1(sin(theta/2.0));
    setQ2(4.0);
    setQ3(0.0);
    printf("new values: %f %f %f %f\n", getQ0(), getQ1(), getQ2(), getQ3());

    emit simulationUpdated(); // Notify QML
}


qreal MainSimulator::getQ0() const
{
    return q0;
}

void MainSimulator::setQ0(qreal newQ0)
{
    q0 = newQ0;
}

qreal MainSimulator::getQ1() const
{
    return q1;
}

void MainSimulator::setQ1(qreal newQ1)
{
    q1 = newQ1;
}

qreal MainSimulator::getQ2() const
{
    return q2;
}

void MainSimulator::setQ2(qreal newQ2)
{
    q2 = newQ2;
}

qreal MainSimulator::getQ3() const
{
    return q3;
}

void MainSimulator::setQ3(qreal newQ3)
{
    q3 = newQ3;
}



