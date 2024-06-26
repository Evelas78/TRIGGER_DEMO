{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "o_EncounterTrigger",
  "eventList": [],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "BoundingBoxes",
    "path": "folders/Objects/GameHandlers/BoundingBoxes.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"asset_TargetRoom","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"asset_BattleRoom","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"rm_BattleRoom","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"int_TransitionTick","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"instArray_EnemyArray","filters":[],"listItems":[
        "\"o_Battle_Enemy_Placeholder\"",
        "\"o_Battle_Enemy_Placeholder\"",
      ],"multiselect":true,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":6,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"int_NumOfEnemy","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"-1","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"int_NumOfHero","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"3","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"script_SpecialEncounterScript","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"  0","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"bool_IsSpecialEncounter","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":3,},
  ],
  "solid": false,
  "spriteId": {
    "name": "s_BoundingBox",
    "path": "sprites/s_BoundingBox/s_BoundingBox.yy",
  },
  "spriteMaskId": null,
  "visible": false,
}