`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2024 11:07:16
// Design Name: 
// Module Name: approx
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module approx(
input [7:0]a,input [7:0]b,output[15:0]o);

wire p70,p61,p52,p43,p34,p25,p16,p07,p71,p62,p53,p44,p35,p26,p17,p72,p63,p54,p45,p36,p27,p73,p64,p55,p46,p37,p74,p65,p56,p47,p75,p66,p57,p76,p67,p77;
wire e1,e2,s1,c1,cout1;
wire s2,c2;
wire s3,c3,cout2;
wire s4,c4,cout3;
wire s5,c5,s6,c6,s7,c7,s8,c8,s9,c9,s10,c10,s11,c11,cout7,cout6,cout5,cout4;
wire s12,c12,s13,c13,s14,c14,s15,c15,s16,c16,s17,c17,s18,c18,s19,c19;
assign p70=a[7]&b[0];
assign p61=a[6]&b[2];
assign p52=a[5]&b[2];
assign p43=a[4]&b[3];
assign p34=a[3]&b[4];
assign p25=a[2]&b[5];
assign p16=a[1]&b[6];
assign p07=a[0]&b[7];
assign p71=a[7]&b[1];
assign p62=a[6]&b[2];
assign p53=a[5]&b[3];
assign p44=a[4]&b[4];
assign p35=a[3]&b[5];
assign p26=a[2]&b[6];
assign p17=a[1]&b[7];
assign p72=a[7]&b[3];
assign p63=a[6]&b[3];
assign p54=a[5]&b[4];
assign p45=a[4]&b[5];
assign p36=a[3]&b[6];
assign p27=a[2]&b[7];
assign p73=a[7]&b[3];
assign p64=a[6]&b[4];
assign p55=a[5]&b[5];
assign p46=a[4]&b[6];
assign p37=a[3]&b[7];
assign p74=a[7]&b[4];
assign p65=a[6]&b[5];
assign p56=a[5]&b[6];
assign p47=a[4]&b[7];
assign p75=a[7]&b[5];
assign p66=a[6]&b[6];
assign p57=a[5]&b[7];
assign p76=a[7]&b[6];
assign p67=a[6]&b[7];
assign p77=a[7]&b[7];

or_4 r1(p70,p61,p52,p43,e1);
or_4 r2(p34,p25,p16,p07,e2);
comp_4 p1(p71,p62,p53,p44,e1,s1,c1,cout1);
fa f1(p35,p26,p17,s2,c2);
comp_4 p2(p72,p63,p54,p45,cout1,s3,c3,cout2);
ha h1(p36,p27,s4,c4);
comp_4 p3(p73,p64,p55,p46,cout2,s5,c5,cout3);
fa f2(p74,p65,cout3,s6,c6);

fa f3(s1,s2,c1,s7,c7);
comp_4 p4(s3,c3,c2,s4,c7,s8,c8,cout4);
comp_4 p5(s5,c5,c4,p37,cout4,s9,c9,cout5);
comp_4 p6(s6,p56,p47,1'b0,cout5,s10,c10,cout6);
comp_4 p7(c6,p75,p66,p57,cout6,s11,c11,cout7);
fa f4(p76,p67,cout7,s12,c12);

fa f5(s7,c7,e2,s13,c13);
fa f6(s8,c8,c13,s14,c14);
fa f7(s9,c9,c14,s15,c15);
fa f8(s10,c10,c15,s16,c16);
fa f9(s11,c11,c16,s17,c17);
fa f10(s12,c12,c17,s18,c18);
ha h2(p77,c18,s19,c19);

assign o[15]=c19;
assign o[14]=s19;
assign o[13]=s18;
assign o[12]=s17;
assign o[11]=s16;
assign o[10]=s15;
assign o[9]=s14;
assign o[8]=s13;
assign o[7:0]=8'b00000110;
endmodule
