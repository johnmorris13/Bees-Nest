if(room==Wasp_waiting){
	obj_text.sprite_index=spr_well;
	alarm[3]=room_speed*2;
}
if(room==Wasp_title){
	room_goto(Wasp);
}
if(room==Wasp_50){
	obj_text.sprite_index=spr_ILost;
	alarm[3]=room_speed*6;
}