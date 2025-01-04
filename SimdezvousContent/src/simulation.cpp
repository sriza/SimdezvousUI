#include "simulation.h"
#include <cmath>

Simulation::Simulation(QObject *parent)
    : QObject{parent}
{
    particles = { QVector3D(0,0,0), QVector3D(1,2,1), QVector3D(-1,-1,-1)};

    // Connect timer to update simulation
    connect(&simulationTimer, &QTimer::timeout, this, &Simulation::updateSimulation);
    simulationTimer.start(16); // 60 FPS

}


void Simulation::updateSimulation() {
    // Update particle positions (simple example: circular motion)
    for (int i = 0; i < particles.size(); ++i) {
        float angle = i + simulationTimer.remainingTime() / 1000.0;
        particles[i].setX(std::cos(angle));
        particles[i].setY(std::sin(angle));
    }
    emit simulationUpdated(); // Notify QML
}

