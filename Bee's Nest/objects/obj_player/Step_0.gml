if(no_gravity==true){
    var move_x = 0;
    var move_y = 0;

    if (keyboard_check(vk_up) || keyboard_check(ord("W")))    move_y = -spd;
    if (keyboard_check(vk_down) || keyboard_check(ord("S")))  move_y = spd;
	if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
		if (!place_meeting(x + spd, y, obj_barrier) && !place_meeting(x + spd, y - 1, obj_platform)) { 
			move_x += spd;
			direction = 0;
			image_xscale = 1;
		}
	}
	if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
		if (!place_meeting(x - spd, y, obj_barrier) && !place_meeting(x - spd, y - 1, obj_platform)) { 
			move_x -= spd;
			direction = 180;
			image_xscale = -1;
		}
	}

    x += move_x;
    y += move_y;
}
else{
	
	if(place_meeting(x,y,obj_ladder)){
		on_ladder=true;
	}else{
		on_ladder=false;
	}
	var vertical_move_arrows=keyboard_check(vk_up)-keyboard_check(vk_down);
	// Gravity
	if(!on_ladder){	
		vspd += grv;
	}
	if(on_ladder){
		vspd=0;
		if(keyboard_check(vk_space)) vspd=-2;
		else vspd=2;
	}

	if (place_meeting(x, y + vspd, obj_platform)&&vspd>0) {
		vspd=0;
	}

	if (place_meeting(x, y + vspd, obj_barrier)) {
		while (!place_meeting(x, y + sign(vspd), obj_barrier)) {
			y += sign(vspd);
		}
		vspd = 0;
	}
	y += vspd;

	// Horizontal movement
	if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
		if (!place_meeting(x + spd, y, obj_barrier) && !place_meeting(x + spd, y - 1, obj_platform)) { 
			x += spd;
			direction = 0;
			image_xscale = 1;
		}
	}
	if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
		if (!place_meeting(x - spd, y, obj_barrier) && !place_meeting(x - spd, y - 1, obj_platform)) { 
			x -= spd;
			direction = 180;
			image_xscale = -1;
		}
	}
}
if(fire_cooldown>0){
	fire_cooldown-=1;
}

if(keyboard_check(vk_lshift)&&fire_cooldown<1&&global.can_attack){
	instance_create_layer(x,y,"Instances",obj_stinger);	
	fire_cooldown=cooldown_timer;
}

// Jumping
isGrounded = place_meeting(x, y + 1, obj_barrier) || place_meeting(x, y + 1, obj_platform);
if (isGrounded && keyboard_check(vk_space)) {
    vspd = -global.jump;
}

