/// @description
// You can write your code in this editor

//be sure to set the state variable on object Create event
//alternatively substitute the state string for a boolean called falling (set to false on create event)
//in which case (state=="rest") can be (!falling) and (state=="falling") can be replaced with (falling)
//the following code will then go into the Step Event

if (!falling) //object will return to original position,
{
    //this will reset the object back to the original position
    //I assume you don't want it to drop again until it's fully reset
    if (y>ystart) 
    {vspeed=-1;} 
    else 
    {
         vspeed=0; 
         //when the player is right below, drop down
         if (abs(obj_player.x-x)<buffer and !underOnly){
			 falling=true;
			 timer=room_speed*2;
		 } 
         //timer variable will make object stay for 2 seconds
		 if (underOnly and obj_player.y>y && abs(obj_player.x-x)<buffer){
			 falling=true;
			 timer=room_speed*2;
		 }
    }
}

if (falling)
{
    if !place_meeting(x,y+1,solid)
    {vspeed+=1;} //yeah, you COULD use gravity but this will also do the same thing
    else
    {
        vspeed=0;
        //timer will tick down while the object is on the ground
        if (timer<=0) {
			falling=false;
		} else {
		timer--;
		}
    }
	if (grounded) {
		instance_destroy();
	}
}
