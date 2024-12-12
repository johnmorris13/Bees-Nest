var player = instance_nearest(x, y, obj_player);
if (player != noone) {
    var dist_to_player = point_distance(x, y, player.x, player.y);
    if (dist_to_player <= message_distance) {
        switch (global.bosses) {
            case 0:
                current_message = mole_message;
                break;
            case 1:
                current_message = spider_message;
                break;
            case 2:
                current_message = wasp_message;
                break;
            default:
                current_message = "Hmm...";
                break;
        }
    } else {
        current_message = "";
    }
}