if(global.shealth<=0){
	instance_destroy();
}
if(instance_number(obj_spider)>0&&global.health<=0){
	global.shealth=350;
}