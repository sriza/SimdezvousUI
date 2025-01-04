import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    Texture {
        id: node10477_Satellite_v1_Diffuse_jpg_texture
        objectName: "10477_Satellite_v1_Diffuse.jpg"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/10477_Satellite_v1_Diffuse.jpg"
    }
    PrincipledMaterial {
        id: node10477_Satellite_v1_material
        objectName: "10477_Satellite_v1"
        baseColor: "#ff969696"
        baseColorMap: node10477_Satellite_v1_Diffuse_jpg_texture
    }

    // Nodes:
    Node {
        id: node10477_Satellite_v1_L3_obj
        objectName: "10477_Satellite_v1_L3.obj"
        Model {
            id: node10477_Satellite_v1_SG
            objectName: "10477_Satellite_v1_SG"
            source: "meshes/node10477_Satellite_v1_SG_mesh.mesh"
            materials: [
                node10477_Satellite_v1_material
            ]
        }
    }

    // Animations:
}
