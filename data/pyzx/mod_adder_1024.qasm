OPENQASM 2.0;
include "qelib1.inc";
qreg q[28];
cx q[9],q[19];
h q[19];
h q[19];
ccx q[8],q[18],q[19];
h q[19];
h q[19];
cx q[8],q[18];
h q[20];
h q[20];
ccx q[7],q[17],q[20];
h q[20];
h q[20];
h q[19];
h q[19];
ccx q[20],q[18],q[19];
h q[19];
h q[19];
h q[20];
h q[20];
ccx q[7],q[17],q[20];
h q[20];
h q[20];
h q[18];
h q[18];
ccx q[7],q[17],q[18];
h q[18];
h q[18];
cx q[7],q[17];
h q[21];
h q[21];
ccx q[6],q[16],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[17],q[20];
h q[20];
h q[20];
h q[19];
h q[19];
ccx q[20],q[18],q[19];
h q[19];
h q[19];
h q[20];
h q[20];
ccx q[21],q[17],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[6],q[16],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[6],q[16],q[20];
h q[20];
h q[20];
h q[18];
h q[18];
ccx q[20],q[17],q[18];
h q[18];
h q[18];
h q[20];
h q[20];
ccx q[6],q[16],q[20];
h q[20];
h q[20];
h q[17];
h q[17];
ccx q[6],q[16],q[17];
h q[17];
h q[17];
cx q[6],q[16];
h q[22];
h q[22];
ccx q[5],q[15],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[16],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[17],q[20];
h q[20];
h q[20];
h q[19];
h q[19];
ccx q[20],q[18],q[19];
h q[19];
h q[19];
h q[20];
h q[20];
ccx q[21],q[17],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[16],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[5],q[15],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[5],q[15],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[16],q[20];
h q[20];
h q[20];
h q[18];
h q[18];
ccx q[20],q[17],q[18];
h q[18];
h q[18];
h q[20];
h q[20];
ccx q[21],q[16],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[5],q[15],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[5],q[15],q[20];
h q[20];
h q[20];
h q[17];
h q[17];
ccx q[20],q[16],q[17];
h q[17];
h q[17];
h q[20];
h q[20];
ccx q[5],q[15],q[20];
h q[20];
h q[20];
h q[16];
h q[16];
ccx q[5],q[15],q[16];
h q[16];
h q[16];
cx q[5],q[15];
h q[23];
h q[23];
ccx q[4],q[14],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[15],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[16],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[17],q[20];
h q[20];
h q[20];
h q[19];
h q[19];
ccx q[20],q[18],q[19];
h q[19];
h q[19];
h q[20];
h q[20];
ccx q[21],q[17],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[16],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[15],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[4],q[14],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[4],q[14],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[15],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[16],q[20];
h q[20];
h q[20];
h q[18];
h q[18];
ccx q[20],q[17],q[18];
h q[18];
h q[18];
h q[20];
h q[20];
ccx q[21],q[16],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[15],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[4],q[14],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[4],q[14],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[15],q[20];
h q[20];
h q[20];
h q[17];
h q[17];
ccx q[20],q[16],q[17];
h q[17];
h q[17];
h q[20];
h q[20];
ccx q[21],q[15],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[4],q[14],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[4],q[14],q[20];
h q[20];
h q[20];
h q[16];
h q[16];
ccx q[20],q[15],q[16];
h q[16];
h q[16];
h q[20];
h q[20];
ccx q[4],q[14],q[20];
h q[20];
h q[20];
h q[15];
h q[15];
ccx q[4],q[14],q[15];
h q[15];
h q[15];
cx q[4],q[14];
h q[24];
h q[24];
ccx q[3],q[13],q[24];
h q[24];
h q[24];
h q[23];
h q[23];
ccx q[24],q[14],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[15],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[16],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[17],q[20];
h q[20];
h q[20];
h q[19];
h q[19];
ccx q[20],q[18],q[19];
h q[19];
h q[19];
h q[20];
h q[20];
ccx q[21],q[17],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[16],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[15],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[24],q[14],q[23];
h q[23];
h q[23];
h q[24];
h q[24];
ccx q[3],q[13],q[24];
h q[24];
h q[24];
h q[23];
h q[23];
ccx q[3],q[13],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[14],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[15],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[16],q[20];
h q[20];
h q[20];
h q[18];
h q[18];
ccx q[20],q[17],q[18];
h q[18];
h q[18];
h q[20];
h q[20];
ccx q[21],q[16],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[15],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[14],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[3],q[13],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[3],q[13],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[14],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[15],q[20];
h q[20];
h q[20];
h q[17];
h q[17];
ccx q[20],q[16],q[17];
h q[17];
h q[17];
h q[20];
h q[20];
ccx q[21],q[15],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[14],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[3],q[13],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[3],q[13],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[14],q[20];
h q[20];
h q[20];
h q[16];
h q[16];
ccx q[20],q[15],q[16];
h q[16];
h q[16];
h q[20];
h q[20];
ccx q[21],q[14],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[3],q[13],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[3],q[13],q[20];
h q[20];
h q[20];
h q[15];
h q[15];
ccx q[20],q[14],q[15];
h q[15];
h q[15];
h q[20];
h q[20];
ccx q[3],q[13],q[20];
h q[20];
h q[20];
h q[14];
h q[14];
ccx q[3],q[13],q[14];
h q[14];
h q[14];
cx q[3],q[13];
h q[25];
h q[25];
ccx q[2],q[12],q[25];
h q[25];
h q[25];
h q[24];
h q[24];
ccx q[25],q[13],q[24];
h q[24];
h q[24];
h q[23];
h q[23];
ccx q[24],q[14],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[15],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[16],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[17],q[20];
h q[20];
h q[20];
h q[19];
h q[19];
ccx q[20],q[18],q[19];
h q[19];
h q[19];
h q[20];
h q[20];
ccx q[21],q[17],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[16],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[15],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[24],q[14],q[23];
h q[23];
h q[23];
h q[24];
h q[24];
ccx q[25],q[13],q[24];
h q[24];
h q[24];
h q[25];
h q[25];
ccx q[2],q[12],q[25];
h q[25];
h q[25];
h q[24];
h q[24];
ccx q[2],q[12],q[24];
h q[24];
h q[24];
h q[23];
h q[23];
ccx q[24],q[13],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[14],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[15],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[16],q[20];
h q[20];
h q[20];
h q[18];
h q[18];
ccx q[20],q[17],q[18];
h q[18];
h q[18];
h q[20];
h q[20];
ccx q[21],q[16],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[15],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[14],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[24],q[13],q[23];
h q[23];
h q[23];
h q[24];
h q[24];
ccx q[2],q[12],q[24];
h q[24];
h q[24];
h q[23];
h q[23];
ccx q[2],q[12],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[13],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[14],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[15],q[20];
h q[20];
h q[20];
h q[17];
h q[17];
ccx q[20],q[16],q[17];
h q[17];
h q[17];
h q[20];
h q[20];
ccx q[21],q[15],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[14],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[13],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[2],q[12],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[2],q[12],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[13],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[14],q[20];
h q[20];
h q[20];
h q[16];
h q[16];
ccx q[20],q[15],q[16];
h q[16];
h q[16];
h q[20];
h q[20];
ccx q[21],q[14],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[13],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[2],q[12],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[2],q[12],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[13],q[20];
h q[20];
h q[20];
h q[15];
h q[15];
ccx q[20],q[14],q[15];
h q[15];
h q[15];
h q[20];
h q[20];
ccx q[21],q[13],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[2],q[12],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[2],q[12],q[20];
h q[20];
h q[20];
h q[14];
h q[14];
ccx q[20],q[13],q[14];
h q[14];
h q[14];
h q[20];
h q[20];
ccx q[2],q[12],q[20];
h q[20];
h q[20];
h q[13];
h q[13];
ccx q[2],q[12],q[13];
h q[13];
h q[13];
cx q[2],q[12];
h q[26];
h q[26];
ccx q[1],q[11],q[26];
h q[26];
h q[26];
h q[25];
h q[25];
ccx q[26],q[12],q[25];
h q[25];
h q[25];
h q[24];
h q[24];
ccx q[25],q[13],q[24];
h q[24];
h q[24];
h q[23];
h q[23];
ccx q[24],q[14],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[15],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[16],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[17],q[20];
h q[20];
h q[20];
h q[19];
h q[19];
ccx q[20],q[18],q[19];
h q[19];
h q[19];
h q[20];
h q[20];
ccx q[21],q[17],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[16],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[15],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[24],q[14],q[23];
h q[23];
h q[23];
h q[24];
h q[24];
ccx q[25],q[13],q[24];
h q[24];
h q[24];
h q[25];
h q[25];
ccx q[26],q[12],q[25];
h q[25];
h q[25];
h q[26];
h q[26];
ccx q[1],q[11],q[26];
h q[26];
h q[26];
h q[25];
h q[25];
ccx q[1],q[11],q[25];
h q[25];
h q[25];
h q[24];
h q[24];
ccx q[25],q[12],q[24];
h q[24];
h q[24];
h q[23];
h q[23];
ccx q[24],q[13],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[14],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[15],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[16],q[20];
h q[20];
h q[20];
h q[18];
h q[18];
ccx q[20],q[17],q[18];
h q[18];
h q[18];
h q[20];
h q[20];
ccx q[21],q[16],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[15],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[14],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[24],q[13],q[23];
h q[23];
h q[23];
h q[24];
h q[24];
ccx q[25],q[12],q[24];
h q[24];
h q[24];
h q[25];
h q[25];
ccx q[1],q[11],q[25];
h q[25];
h q[25];
h q[24];
h q[24];
ccx q[1],q[11],q[24];
h q[24];
h q[24];
h q[23];
h q[23];
ccx q[24],q[12],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[13],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[14],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[15],q[20];
h q[20];
h q[20];
h q[17];
h q[17];
ccx q[20],q[16],q[17];
h q[17];
h q[17];
h q[20];
h q[20];
ccx q[21],q[15],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[14],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[13],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[24],q[12],q[23];
h q[23];
h q[23];
h q[24];
h q[24];
ccx q[1],q[11],q[24];
h q[24];
h q[24];
h q[23];
h q[23];
ccx q[1],q[11],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[12],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[13],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[14],q[20];
h q[20];
h q[20];
h q[16];
h q[16];
ccx q[20],q[15],q[16];
h q[16];
h q[16];
h q[20];
h q[20];
ccx q[21],q[14],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[13],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[12],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[1],q[11],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[1],q[11],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[12],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[13],q[20];
h q[20];
h q[20];
h q[15];
h q[15];
ccx q[20],q[14],q[15];
h q[15];
h q[15];
h q[20];
h q[20];
ccx q[21],q[13],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[12],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[1],q[11],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[1],q[11],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[12],q[20];
h q[20];
h q[20];
h q[14];
h q[14];
ccx q[20],q[13],q[14];
h q[14];
h q[14];
h q[20];
h q[20];
ccx q[21],q[12],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[1],q[11],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[1],q[11],q[20];
h q[20];
h q[20];
h q[13];
h q[13];
ccx q[20],q[12],q[13];
h q[13];
h q[13];
h q[20];
h q[20];
ccx q[1],q[11],q[20];
h q[20];
h q[20];
h q[12];
h q[12];
ccx q[1],q[11],q[12];
h q[12];
h q[12];
cx q[1],q[11];
h q[27];
h q[27];
ccx q[0],q[10],q[27];
h q[27];
h q[27];
h q[26];
h q[26];
ccx q[27],q[11],q[26];
h q[26];
h q[26];
h q[25];
h q[25];
ccx q[26],q[12],q[25];
h q[25];
h q[25];
h q[24];
h q[24];
ccx q[25],q[13],q[24];
h q[24];
h q[24];
h q[23];
h q[23];
ccx q[24],q[14],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[15],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[16],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[17],q[20];
h q[20];
h q[20];
h q[19];
h q[19];
ccx q[20],q[18],q[19];
h q[19];
h q[19];
h q[20];
h q[20];
ccx q[21],q[17],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[16],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[15],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[24],q[14],q[23];
h q[23];
h q[23];
h q[24];
h q[24];
ccx q[25],q[13],q[24];
h q[24];
h q[24];
h q[25];
h q[25];
ccx q[26],q[12],q[25];
h q[25];
h q[25];
h q[26];
h q[26];
ccx q[27],q[11],q[26];
h q[26];
h q[26];
h q[27];
h q[27];
ccx q[0],q[10],q[27];
h q[27];
h q[27];
h q[26];
h q[26];
ccx q[0],q[10],q[26];
h q[26];
h q[26];
h q[25];
h q[25];
ccx q[26],q[11],q[25];
h q[25];
h q[25];
h q[24];
h q[24];
ccx q[25],q[12],q[24];
h q[24];
h q[24];
h q[23];
h q[23];
ccx q[24],q[13],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[14],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[15],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[16],q[20];
h q[20];
h q[20];
h q[18];
h q[18];
ccx q[20],q[17],q[18];
h q[18];
h q[18];
h q[20];
h q[20];
ccx q[21],q[16],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[15],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[14],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[24],q[13],q[23];
h q[23];
h q[23];
h q[24];
h q[24];
ccx q[25],q[12],q[24];
h q[24];
h q[24];
h q[25];
h q[25];
ccx q[26],q[11],q[25];
h q[25];
h q[25];
h q[26];
h q[26];
ccx q[0],q[10],q[26];
h q[26];
h q[26];
h q[25];
h q[25];
ccx q[0],q[10],q[25];
h q[25];
h q[25];
h q[24];
h q[24];
ccx q[25],q[11],q[24];
h q[24];
h q[24];
h q[23];
h q[23];
ccx q[24],q[12],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[13],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[14],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[15],q[20];
h q[20];
h q[20];
h q[17];
h q[17];
ccx q[20],q[16],q[17];
h q[17];
h q[17];
h q[20];
h q[20];
ccx q[21],q[15],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[14],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[13],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[24],q[12],q[23];
h q[23];
h q[23];
h q[24];
h q[24];
ccx q[25],q[11],q[24];
h q[24];
h q[24];
h q[25];
h q[25];
ccx q[0],q[10],q[25];
h q[25];
h q[25];
h q[24];
h q[24];
ccx q[0],q[10],q[24];
h q[24];
h q[24];
h q[23];
h q[23];
ccx q[24],q[11],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[12],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[13],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[14],q[20];
h q[20];
h q[20];
h q[16];
h q[16];
ccx q[20],q[15],q[16];
h q[16];
h q[16];
h q[20];
h q[20];
ccx q[21],q[14],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[13],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[12],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[24],q[11],q[23];
h q[23];
h q[23];
h q[24];
h q[24];
ccx q[0],q[10],q[24];
h q[24];
h q[24];
h q[23];
h q[23];
ccx q[0],q[10],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[23],q[11],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[12],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[13],q[20];
h q[20];
h q[20];
h q[15];
h q[15];
ccx q[20],q[14],q[15];
h q[15];
h q[15];
h q[20];
h q[20];
ccx q[21],q[13],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[12],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[23],q[11],q[22];
h q[22];
h q[22];
h q[23];
h q[23];
ccx q[0],q[10],q[23];
h q[23];
h q[23];
h q[22];
h q[22];
ccx q[0],q[10],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[22],q[11],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[12],q[20];
h q[20];
h q[20];
h q[14];
h q[14];
ccx q[20],q[13],q[14];
h q[14];
h q[14];
h q[20];
h q[20];
ccx q[21],q[12],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[22],q[11],q[21];
h q[21];
h q[21];
h q[22];
h q[22];
ccx q[0],q[10],q[22];
h q[22];
h q[22];
h q[21];
h q[21];
ccx q[0],q[10],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[21],q[11],q[20];
h q[20];
h q[20];
h q[13];
h q[13];
ccx q[20],q[12],q[13];
h q[13];
h q[13];
h q[20];
h q[20];
ccx q[21],q[11],q[20];
h q[20];
h q[20];
h q[21];
h q[21];
ccx q[0],q[10],q[21];
h q[21];
h q[21];
h q[20];
h q[20];
ccx q[0],q[10],q[20];
h q[20];
h q[20];
h q[12];
h q[12];
ccx q[20],q[11],q[12];
h q[12];
h q[12];
h q[20];
h q[20];
ccx q[0],q[10],q[20];
h q[20];
h q[20];
h q[11];
h q[11];
ccx q[0],q[10],q[11];
h q[11];
h q[11];
cx q[0],q[10];
