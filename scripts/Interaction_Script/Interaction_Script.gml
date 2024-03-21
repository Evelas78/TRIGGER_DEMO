// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/*
All interactions will go through using the game controllers Progress and Progress max
It will set those variables to 0 and the total number of "interactions" in the interaction (each text bubble, each set of movement. Etc)

They will be trigger by interacting with objects or going over a bounding box for interactions

First, interactions will work using a switch statement. 
Itll check which progress we are on and continue to draw it until we progress

Itll go down until it reaches it max at which the final one will close out the textbox (by just not drawing it)
and set the playing to whatever mode it needs to be. It can transtion, continue overworld, and i guess thats about it really

Cutscenes and movement of objects during:
First, we need to make a script that allows npcs to move to a specific x or y location. This should trigger walk animations
We also need to make scripts for things like shoving or other specific gestures that trigger.
It should return a true/false statement to say whether it finished moving.
(Dont forget, main characters will need to automatically move to a specifix x or y before it starts, in case
with cutscenes, so that means youre going want to run that movement script as the very first step)

For things like this, we'll have a cutscene manager, which will run the movement and script until it ends. When it ends, it will give the signal to move on and increase the progress by 1.
Remember, cutscenes do not include the text box, it only includes the movement. In the cutscene manager, make it so that each character can be loaded in as 
lets say an actor which will have their progress bars there to fully progress throguhout it. 
*/

function interact_DebugInteraction(_InteractionKeyPressed){
	



}

