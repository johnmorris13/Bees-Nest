if(room==Mole){
	if(global.mhealth<=99&&global.room_active==false){
		global.room_active=true;
		alarm[0]=room_speed*attack_speed;
	}
}else if(room==Spider){
	if(spider_active==false){
		spider_active=true;
		alarm[0]=room_speed;
	}
}
if (room == Wasp||room==Wasp_50) {
	if(global.whealth>0){
		
		if (global.room_active == false) {
			global.room_active = true;
			alarm[0] = room_speed * attack_speed; 
		}
	}
	if(global.whealth<=0){
	global.room_active=false;
	}
}
