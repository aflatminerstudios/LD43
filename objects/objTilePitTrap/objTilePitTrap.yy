{
    "id": "aead5df5-c33c-4cd8-beb1-a929108fe2f5",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "objTilePitTrap",
    "eventList": [
        {
            "id": "aac9f816-96b2-4c1f-af8e-305dcf8d327a",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "aead5df5-c33c-4cd8-beb1-a929108fe2f5"
        },
        {
            "id": "695a5240-f84c-40cd-94f2-396bb82dbbbd",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "aead5df5-c33c-4cd8-beb1-a929108fe2f5"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "454dd4e6-2323-47ca-9daa-d416f395d2c8",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "46ec8a3a-5030-4e23-b8cc-daaf373e5319",
            "propertyId": "26aa0dda-e5f9-4c27-9cc6-2c3bc2708474",
            "value": "1"
        }
    ],
    "parentObjectId": "46ec8a3a-5030-4e23-b8cc-daaf373e5319",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "be573f17-fef6-4550-be63-0feba974ac0f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": [
                "objBridgeNorthSouth",
                "objBridgeWestEast"
            ],
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "objBridgeWestEast",
            "varName": "bridgeType",
            "varType": 6
        },
        {
            "id": "795bcc9d-04a8-47fc-baf4-b05b9d8a1b98",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": [
                "objBridgeWestEastDown",
                "objBridgeNorthSouthDown"
            ],
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "objBridgeWestEastDown",
            "varName": "bridgeTypeDown",
            "varType": 6
        }
    ],
    "solid": false,
    "spriteId": "0befc62c-3619-4d6c-a7f2-1161e391e9e2",
    "visible": true
}