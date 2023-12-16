
if (place_meeting(x - 100, y, obj_character_parent)) // can be placement of button as well
{
	if (keyboard_check_pressed(ord("F")))
	{
		active = true;
	}
}

if (active_count > 200)
{
	active = false;
}

if (active)
{
	y = y - 1;
	active_count = active_count + 1;
}