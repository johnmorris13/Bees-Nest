var desired_aspect_ratio = 4.0 / 3.0;
if (room != Mole && room != Tree && room != Cloud && room != Porch && room != Spider && room != Hallway && room != Wasp && room != Wasp_50 && room != Wasp_waiting && room != Wasp_title && room != Thanks && room != Credits) {
    view_enabled = true;
    view_visible[0] = true;

    var viewport_width = 350;
    var viewport_height = viewport_width / desired_aspect_ratio;

    view_wport[0] = viewport_width;
    view_hport[0] = viewport_height;

    camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);
    camera_set_view_pos(view_camera[0], x - view_wport[0] / 2, y - view_hport[0] / 2);
} else if (room == Hallway) {
    view_enabled = true;
    view_visible[0] = true;

    var viewport_width = 350;
    var viewport_height = 240;

    view_wport[0] = viewport_width;
    view_hport[0] = viewport_height;

    camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);
    camera_set_view_pos(view_camera[0], x - view_wport[0] / 2, y - view_hport[0] / 2);
} else if (room == Thanks || room == Credits) {
    view_enabled = true;
    view_visible[0] = true;

    view_wport[0] = 1152;
    view_hport[0] = 648;

    camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);
    camera_set_view_pos(view_camera[0], 0, 0);
}