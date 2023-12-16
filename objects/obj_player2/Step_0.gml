// Inherit the parent event
event_inherited();

if (keyboard_check_pressed(ord("F")))
{
	if (place_meeting(x, y, obj_hareteleport_a))
	{
		x = obj_hareteleport_b.x;
		y = obj_hareteleport_b.y;
	}
	else if (place_meeting(x, y, obj_hareteleport_b))
	{
		x = obj_hareteleport_a.x;
		y = obj_hareteleport_a.y;
	}
}