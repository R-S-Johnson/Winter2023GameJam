if (place_meeting(x, y - 100, obj_character_parent)) // once again, button or top of platform
{
	if (keyboard_check_pressed(ord("F")))
	{
		active = true;
	}
}

if (path_length > 500) // path length max
{
	active = false;
}

if (active)
{
	x = x + 1;
	path_length = path_length + 1;
	if (place_meeting(x, y - 100, obj_player))
	{
		obj_player.x = obj_player.x + 1;
	}
}