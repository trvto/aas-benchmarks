OPENQASM 2.0;
include "qelib1.inc";
qreg q[19];
h q[10];
h q[10];
ccx q[0],q[1],q[10];
h q[10];
h q[10];
h q[11];
h q[11];
ccx q[2],q[10],q[11];
h q[11];
h q[11];
h q[12];
h q[12];
ccx q[3],q[11],q[12];
h q[12];
h q[12];
h q[13];
h q[13];
ccx q[4],q[12],q[13];
h q[13];
h q[13];
h q[14];
h q[14];
ccx q[5],q[13],q[14];
h q[14];
h q[14];
h q[15];
h q[15];
ccx q[6],q[14],q[15];
h q[15];
h q[15];
h q[16];
h q[16];
ccx q[7],q[15],q[16];
h q[16];
h q[16];
h q[17];
h q[17];
ccx q[8],q[16],q[17];
h q[17];
h q[17];
h q[18];
h q[18];
ccx q[9],q[17],q[18];
h q[18];
h q[18];
h q[17];
h q[17];
ccx q[8],q[16],q[17];
h q[17];
h q[17];
h q[16];
h q[16];
ccx q[7],q[15],q[16];
h q[16];
h q[16];
h q[15];
h q[15];
ccx q[6],q[14],q[15];
h q[15];
h q[15];
h q[14];
h q[14];
ccx q[5],q[13],q[14];
h q[14];
h q[14];
h q[13];
h q[13];
ccx q[4],q[12],q[13];
h q[13];
h q[13];
h q[12];
h q[12];
ccx q[3],q[11],q[12];
h q[12];
h q[12];
h q[11];
h q[11];
ccx q[2],q[10],q[11];
h q[11];
h q[11];
h q[10];
h q[10];
ccx q[0],q[1],q[10];
h q[10];
h q[10];
