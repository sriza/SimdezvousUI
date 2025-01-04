import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources

    // Nodes:
    Node {
        id: node15644_Billiards_Stick_Bridge_v2_obj
        objectName: "15644_Billiards_Stick_Bridge_v2.obj"
        Model {
            id: node15644_Billiards_Stick_Bridge_v1
            objectName: "15644_Billiards_Stick_Bridge_v1"
            source: "meshes/node15644_Billiards_Stick_Bridge_v1_mesh.mesh"
            materials: [
                _15644_Billiards_Stick_Bridge_v1default_material
            ]
        }
    }

    Node {
        id: __materialLibrary__

        CustomMaterial {
            id: _15644_Billiards_Stick_Bridge_v1default_material
            alwaysDirty: false
            destinationBlend: CustomMaterial.SrcColor
            sourceBlend: CustomMaterial.SrcColor
            objectName: "_15644_Billiards_Stick_Bridge_v1default"
        }

        Texture {
            id: _texture
            objectName: "Texture"
        }

        Texture {
            id: _texture1
            objectName: "Texture1"
        }
    }

    // Animations:
}
