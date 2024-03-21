{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "DevTestRoomEncounter",
  "creationCodeFile": "${project_dir}/rooms/DevTestRoomEncounter/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_3891AD6F_1_1","path":"rooms/DevTestRoomEncounter/DevTestRoomEncounter.yy",},
    {"name":"inst_35FA02DA","path":"rooms/DevTestRoomEncounter/DevTestRoomEncounter.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"CollisionMap","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":15,"SerialiseWidth":25,"TileCompressedData":[
-126,1,-16,0,-9,1,-16,0,-9,1,-16,0,-9,1,-16,0,-9,1,-16,0,-9,1,-19,0,-4,
-2147483648,-2,1,-19,0,-4,-2147483648,-2,1,-19,0,-4,-2147483648,-2,1,-10,0,-5,1,-4,0,-4,-2147483648,-26,1,
],"TileDataFormat":1,},"tilesetId":{"name":"tM_CollisionMap","path":"tilesets/tM_CollisionMap/tM_CollisionMap.yy",},"userdefinedDepth":false,"visible":false,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"ShadowTiles","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":15,"SerialiseWidth":25,"TileCompressedData":[
-182,10,-5,0,-19,10,-7,0,-17,10,-10,0,-15,10,-7,0,-19,10,-5,0,-21,10,-2,0,-66,
10,],"TileDataFormat":1,},"tilesetId":{"name":"tM_Shadows","path":"tilesets/tM_Shadows/tM_Shadows.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3891AD6F_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_Overworld_PLACEHOLDER","path":"objects/o_Overworld_PLACEHOLDER/o_Overworld_PLACEHOLDER.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":96.0,"y":352.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_35FA02DA","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_EncounterTrigger","path":"objects/o_EncounterTrigger/o_EncounterTrigger.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"o_EncounterTrigger","path":"objects/o_EncounterTrigger/o_EncounterTrigger.yy",},"propertyId":{"name":"script_SpecialEncounterScript","path":"objects/o_EncounterTrigger/o_EncounterTrigger.yy",},"value":"PlaceholderFight",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"o_EncounterTrigger","path":"objects/o_EncounterTrigger/o_EncounterTrigger.yy",},"propertyId":{"name":"bool_IsSpecialEncounter","path":"objects/o_EncounterTrigger/o_EncounterTrigger.yy",},"value":"True",},
          ],"rotation":0.0,"scaleX":0.5,"scaleY":2.5,"x":768.0,"y":288.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"DecorationTiles","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":0,"SerialiseWidth":0,"TileSerialiseData":[
],},"tilesetId":null,"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"GroundTiles","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":15,"SerialiseWidth":25,"TileCompressedData":[
-26,0,-16,41,-9,0,-16,41,-9,0,-16,39,-9,0,-16,39,-9,0,-16,10,-9,0,-3,10,1,
11,-3,12,1,13,-8,10,-7,41,-2,0,-3,10,1,14,-3,36,1,18,-8,10,-7,41,-2,0,
4,10,11,12,22,-3,36,2,21,13,-7,10,-7,39,-2,0,2,12,22,-6,36,1,21,-5,12,
2,13,10,-7,39,-2,0,-14,36,1,21,-8,12,-2,0,-3,16,1,20,-19,36,-2,0,-3,10,
1,15,-11,16,1,20,-7,36,-2,0,-10,10,-5,0,1,15,-7,16,-26,0,],"TileDataFormat":1,},"tilesetId":{"name":"tM_Forest","path":"tilesets/tM_Forest/tM_Forest.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "GameRooms",
    "path": "folders/Rooms/GameRooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 480,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 800,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":900,"hspeed":-1,"hview":360,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1600,"wview":640,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}