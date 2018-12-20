//animates player
image_angle_body = point_direction(x, y, mouse_x, mouse_y);
if (left || right || up || down)
{
    image_angle_legs = point_direction(xprevious, yprevious, x, y);
    sprite_index = spr_legs_walk;
    sprite_index_armL = spr_armL_run;
    image_time--;
    if (image_time <= 0)
    {
        image_index++;
        if (image_index >= sprite_get_number(sprite_index))
            image_index = 0;
        image_time = image_timecap;
    }
}
else
{
    sprite_index = spr_legs_stand;
    sprite_index_armL = spr_armL_still;
    image_index = 0;
    image_time = image_timecap;
    image_angle_legs = image_angle_body;
}

image_index_armL = image_index;

if (reloadtime < reloadtimecap)
{
    sprite_index_armL = spr_armL_reload;
    image_index_armL = (sprite_get_number(sprite_index_armL) - 1) * reloadtime / reloadtimecap
}
