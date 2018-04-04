/// scr_load()

var file, n0, n1, inst, xx, yy;
file = "savefile.ini";
ini_open(file);
n0 = 0;
n1 = 0;
inst = 0;
xx = 0;
yy = 0;
while(ini_key_exists("save", string(n0)+string(n1))){
    inst = ini_read_real("save", string(n0) + string(n1), 0);
    n1++;
    xx = ini_read_real("save", string(n0) + string(n1), 0);
    n1++;
    yy = ini_read_real("save", string(n0) + string(n1), 0);
    instance_create(xx, yy, inst);
    n0++;
    n1 = 0;
    //block = inst;
}
view_yview[0] = ini_read_real("save", 'vy',3920);
obj_fail_point.y = ini_read_real("save", 'faily', 4873);
y = ini_read_real("save", 'cy', 4160);
block = ini_read_real("save", string(n0)+string(n1), -1);
ini_close();
