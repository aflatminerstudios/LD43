{
    "id": "33babf9b-9202-45f3-9661-17b2858902b3",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "objTrap",
    "eventList": [
        {
            "id": "4f054271-c6ab-4ea0-b7ee-37263870947c",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "33babf9b-9202-45f3-9661-17b2858902b3"
        },
        {
            "id": "492644b8-b925-43b6-b468-c47000d0dad6",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "33babf9b-9202-45f3-9661-17b2858902b3"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "b1767245-e01f-4a4c-88f7-0c8520d6c68e",
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
            "id": "a58a3167-174b-433e-9280-9ce9b175a526",
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
            "id": "69781648-4f84-453f-8cc4-73e45b06a570",
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
        },
        {
            "id": "8172dcbe-6a19-4ec6-ab9a-612ce1b4d222",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "isNormallyActivated",
            "varType": 3
        },
        {
            "id": "6de60166-9c7f-4b20-a508-e27294e559ca",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "switchesFlipState",
            "varType": 3
        }
    ],
    "solid": false,
    "spriteId": "0befc62c-3619-4d6c-a7f2-1161e391e9e2",
    "visible": true
}