if(global.room_active=true){
	if(room==Mole){
		if(instance_exists(parent_object)){
			instance_create_layer(x+10, y, "Instances", attack_object);
			alarm[0]=room_speed*attack_speed;
		}
	}else if(room==Spider){
		instance_create_layer(x+10, y, "Instances", attack_object);
		alarm[0] = irandom_range(room_speed * (1/attack_speed), room_speed * attack_speed);
	}else if(room==Wasp||room==Wasp_50){
		instance_create_layer(x+10, y, "Instances", attack_object);
		alarm[0] = irandom_range(room_speed * (attack_speed - 1), room_speed * (attack_speed + 1));
	}
}else{
	alarm[0] = irandom_range(room_speed * (1 / attack_speed), room_speed * attack_speed);
}
