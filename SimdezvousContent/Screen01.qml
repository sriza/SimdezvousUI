/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick
import QtQuick.Controls
import Simdezvous
import Generated.QtQuick3D.Node10477_Satellite_v1_L3
import QtQuick3D 6.5
import Generated.QtQuick3D.Node15644_Billiards_Stick_Bridge_v2
import QtQuick.Studio.Components 1.0
import QtQuick3D.Helpers 6.5

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Connections {
        target: mainSimulator
        onSimulationUpdated: {
            console.log("simulation has been updated", mainSimulator.q0, mainSimulator.q1, mainSimulator.q2, mainSimulator.q3);
            // particleSystem.update();
        }
    }

    // MainSimulator {
    //     id: mainSimulator
    //     onSimulationUpdated: {
    //         console.log("updating simualation", mainSimulator.getQ0)
    //     }
    // }

    // MainSimulator{
    //     id: mainSimulator
    //     onSimulationUpdated: {
    //         console.log("updating the simulation", mainSimulator.getQ0, mainSimulator.getQ1);

    //         particleSystem.update() // Update visualization
    //     }
    // }

    Text {
        text: qsTr("Hello Simdezvous")
        anchors.centerIn: parent
        font.family: Constants.font.family
    }

    Item {
        id: __materialLibrary__

        PrincipledMaterial {
            id: principledMaterial
            objectName: "New Material"
        }
    }

    View3D {
        id: view3D
        x: 538
        y: 77
        width: 1084
        height: 879
        environment: sceneEnvironment
        SceneEnvironment {
            id: sceneEnvironment
            antialiasingQuality: SceneEnvironment.High
            antialiasingMode: SceneEnvironment.MSAA
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
                x: 0
                y: 0
                brightness: 1
            }

            PerspectiveCamera {
                id: sceneCamera
                x: -0.001
                y: -0.001
                z: 6433.46045
            }

            Node10477_Satellite_v1_L3 {
                id: particleSystem
                x: -599.499
                y: 0
                z: -743.18707
                rotation: Qt.quaternion(mainSimulator.q0, mainSimulator.q1, mainSimulator.q2, mainSimulator.q3)

                AxisHelper {
                    id: axisHelper
                    enableXZGrid: false
                }
            }

            Node15644_Billiards_Stick_Bridge_v2 {
                id: node15644_Billiards_Stick_Bridge_v2
                x: 0
                property color arrowColor: "#ef1717"
                scale.x: 100
                scale.z: 10
                scale.y: 10
                z: 0
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;matPrevEnvDoc:"SkyBox";matPrevEnvValueDoc:"preview_studio";matPrevModelDoc:"#Sphere"}
D{i:6;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/
