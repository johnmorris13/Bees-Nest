if (ds_list_find_index(global.destroyed_objects, id) != -1) {
    instance_destroy();
}