if(room==Wasp_waiting){
	alarm[0]=room_speed*1;
}
if(room==Wasp_title){
	alarm[0]=room_speed*1;
}
if(room==Wasp){
	obj_player.x=49;
	obj_player.y=153;
	global.can_attack=true;
}if(room==Wasp_50){
	obj_wasp.sprite_index=spr_boss_wasp_50;
}
if(room==Thanks){
	alarm[8]=room_speed*10;
}
