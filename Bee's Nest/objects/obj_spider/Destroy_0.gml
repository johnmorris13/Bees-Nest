instance_create_layer(139, 200, "Instances", obj_hive_warp);
global.bees+=1;
global.jump+=2;
global.dmg+=2;
ds_list_add(global.destroyed_objects, id);
global.bosses=2;