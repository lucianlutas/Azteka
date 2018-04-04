/// scr_save()

var file, inst_num, n0, n1, inst;
file = "savefile.ini";
if (file_exists(file)){
    file_delete(file);
}

ini_open(file);
inst_num = instance_number(obj_block_par);
n0 = 0;
n1 = 0;
while inst_num > 0{
    inst = instance_find(obj_block_par, inst_num-1);
    ini_write_real("save", string(n0) + string(n1), inst.object_index);
    n1++;
    ini_write_real("save", string(n0) + string(n1), inst.x);
    n1++;
    ini_write_real("save", string(n0) + string(n1), inst.y);
    inst_num --;
    n0++;
    n1 = 0;
}
ini_write_real("save", 'vy', view_yview[0]);
ini_write_real("save", 'faily', obj_fail_point.y);
ini_write_real("save", 'cy', y);
//ini_write_real("save", "blk", block);
ini_close();
