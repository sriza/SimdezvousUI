#ifndef MAINSIMULATOR_H
#define MAINSIMULATOR_H

#include <QObject>
#include <QVector3D>
#include <QTimer>
#include <QVector>
#include <qqml.h>
#include <QtTypes>


class MainSimulator : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(qreal q0 READ getQ0 WRITE setQ0 NOTIFY simulationUpdated);
    Q_PROPERTY(qreal q1 READ getQ1 WRITE setQ1 NOTIFY simulationUpdated);
    Q_PROPERTY(qreal q2 READ getQ2 WRITE setQ2 NOTIFY simulationUpdated);
    Q_PROPERTY(qreal q3 READ getQ3 WRITE setQ3 NOTIFY simulationUpdated);


public:
    explicit MainSimulator(QObject *parent = nullptr);

    void updateSimulation();

    qreal getQ0() const;
    void setQ0(qreal newQ0);
    qreal getQ1() const;
    void setQ1(qreal newQ1);
    qreal getQ2() const;
    void setQ2(qreal newQ2);
    qreal getQ3() const;
    void setQ3(qreal newQ3);
    QTimer getSimulationTimer() const;
    void setSimulationTimer(const QTimer &newSimulationTimer);

signals:
    void simulationUpdated();

private:
    qreal q0,q1,q2,q3 =1;
    QTimer simulationTimer;
};

#endif // MAINSIMULATOR_H
