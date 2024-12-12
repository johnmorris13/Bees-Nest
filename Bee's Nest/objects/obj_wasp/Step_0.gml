if((room==Wasp||room==Wasp_50)&&global.whealth>0){
	y = start_y + amplitude * sin(time);
	time += oscillation_speed;
}
if(global.whealth<=0){
	global.can_attack=false;
	global.health=999;
	alarm[9]=room_speed*3;
}
if(instance_number(obj_wasp)>0&&global.health<=0){
	global.whealth=400;
}
if(room==Wasp&&global.whealth<=150){
	room_goto(Wasp_50);
}