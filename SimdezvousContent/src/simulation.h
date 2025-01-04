#ifndef SIMULATION_H
#define SIMULATION_H

#include <QObject>
#include <QVector3D>
#include <QTimer>
#include <QVector>

class Simulation : public QObject
{
    Q_OBJECT
public:
    explicit Simulation(QObject *parent = nullptr);

    QVector<QVector3D> getParticles() const { return particles; }
    void updateSimulation();

signals:
    void simulationUpdated();

private:
    QVector<QVector3D> particles; // Store particle positions
    QTimer simulationTimer;
};

#endif // SIMULATION_H
