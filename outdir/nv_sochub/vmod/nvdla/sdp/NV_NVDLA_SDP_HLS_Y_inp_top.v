// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_SDP_HLS_Y_inp_top.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_SDP_define.h
module NV_NVDLA_SDP_HLS_Y_inp_top (
   chn_inp_in_pd //|< i
  ,chn_inp_in_pvld //|< i
  ,chn_inp_out_prdy //|< i
  ,nvdla_core_clk //|< i
  ,nvdla_core_rstn //|< i
  ,chn_inp_in_prdy //|> o
  ,chn_inp_out_pd //|> o
  ,chn_inp_out_pvld //|> o
  );
input [185*1 -1:0] chn_inp_in_pd;
input chn_inp_in_pvld;
input chn_inp_out_prdy;
output chn_inp_in_prdy;
output [32*1 -1:0] chn_inp_out_pd;
output chn_inp_out_pvld;
input nvdla_core_clk;
input nvdla_core_rstn;
//: my $k=1;
//: my $bf =1*32;
//: my $by0=1*(32+35);
//: my $by1=1*(32+35+16);
//: my $bsc=1*(32+35+32);
//: my $bsf=1*(32+35+48);
//: my $bof=1*(32+35+48+5);
//: my $bbs=1*(32+35+85);
//: my $bfw=1*(32+35+85+32);
//: foreach my $i (0..${k}-1) {
//: print qq(
//: wire chn_inp_in_prdy${i};
//: wire [31:0] chn_inp_out_data${i};
//: wire chn_inp_out_pvld${i};
//: wire [31:0] inp_in_bias${i};
//: wire inp_in_flow${i};
//: wire [34:0] inp_in_fraction${i};
//: wire [31:0] inp_in_offset${i};
//: wire [15:0] inp_in_scale${i};
//: wire [4:0] inp_in_shift${i};
//: wire [31:0] inp_in_x${i};
//: wire [15:0] inp_in_y0_${i};
//: wire [15:0] inp_in_y1_${i};
//: );
//: }
//: print "\n";
//:
//: foreach my $i (0..${k}-1) {
//: print "assign  chn_inp_out_pd[32*${i}+31:32*${i}] = chn_inp_out_data${i}; \n";
//: }
//: print "\n";
//:
//: foreach my $i (0..${k}-1) {
//: print qq(
//: NV_NVDLA_SDP_HLS_Y_int_inp y_int_inp_${i} (
//: .inp_bias_in (inp_in_bias${i}[31:0]) //|< w
//: ,.inp_flow_in (inp_in_flow${i}) //|< w
//: ,.inp_frac_in (inp_in_fraction${i}[34:0]) //|< w
//: ,.inp_in_pvld (chn_inp_in_pvld) //|< i
//: ,.inp_offset_in (inp_in_offset${i}[31:0]) //|< w
//: ,.inp_out_prdy (chn_inp_out_prdy) //|< i
//: ,.inp_scale_in (inp_in_scale${i}[15:0]) //|< w
//: ,.inp_shift_in (inp_in_shift${i}[4:0]) //|< w
//: ,.inp_x_in (inp_in_x${i}[31:0]) //|< w
//: ,.inp_y0_in (inp_in_y0_${i}[15:0]) //|< w
//: ,.inp_y1_in (inp_in_y1_${i}[15:0]) //|< w
//: ,.inp_data_out (chn_inp_out_data${i}[31:0]) //|> w
//: ,.inp_in_prdy (chn_inp_in_prdy${i}) //|> w
//: ,.inp_out_pvld (chn_inp_out_pvld${i}) //|> w
//: ,.nvdla_core_clk (nvdla_core_clk) //|< i
//: ,.nvdla_core_rstn (nvdla_core_rstn) //|< i
//: );
//: );
//: }
//: print "\n";
//:
//: foreach my $i (0..${k}-1) {
//: print "assign   inp_in_x${i}[31:0]        = chn_inp_in_pd[32*${i}+31:32*${i}]; \n";
//: }
//: foreach my $i (0..${k}-1) {
//: print "assign   inp_in_fraction${i}[34:0] = chn_inp_in_pd[35*${i}+${bf}+34:35*${i}+${bf}]; \n";
//: }
//: foreach my $i (0..${k}-1) {
//: print "assign   inp_in_y0_${i}[15:0]      = chn_inp_in_pd[16*${i}+${by0}+15:16*${i}+${by0}]; \n";
//: }
//: foreach my $i (0..${k}-1) {
//: print "assign   inp_in_y1_${i}[15:0]      = chn_inp_in_pd[16*${i}+${by1}+15:16*${i}+${by1}]; \n";
//: }
//: foreach my $i (0..${k}-1) {
//: print "assign   inp_in_scale${i}[15:0]    = chn_inp_in_pd[16*${i}+${bsc}+15:16*${i}+${bsc}]; \n";
//: }
//: foreach my $i (0..${k}-1) {
//: print "assign   inp_in_shift${i}[4:0]     = chn_inp_in_pd[5*${i}+${bsf}+4:5*${i}+${bsf}]; \n";
//: }
//: foreach my $i (0..${k}-1) {
//: print "assign   inp_in_offset${i}[31:0]   = chn_inp_in_pd[32*${i}+${bof}+31:32*${i}+${bof}]; \n";
//: }
//: foreach my $i (0..${k}-1) {
//: print "assign   inp_in_bias${i}[31:0]     = chn_inp_in_pd[32*${i}+${bbs}+31:32*${i}+${bbs}]; \n";
//: }
//: foreach my $i (0..${k}-1) {
//: print "assign   inp_in_flow${i}           = chn_inp_in_pd[${i}+${bfw}]; \n";
//: }
//: print "\n";
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire chn_inp_in_prdy0;
wire [31:0] chn_inp_out_data0;
wire chn_inp_out_pvld0;
wire [31:0] inp_in_bias0;
wire inp_in_flow0;
wire [34:0] inp_in_fraction0;
wire [31:0] inp_in_offset0;
wire [15:0] inp_in_scale0;
wire [4:0] inp_in_shift0;
wire [31:0] inp_in_x0;
wire [15:0] inp_in_y0_0;
wire [15:0] inp_in_y1_0;

assign  chn_inp_out_pd[32*0+31:32*0] = chn_inp_out_data0; 


NV_NVDLA_SDP_HLS_Y_int_inp y_int_inp_0 (
.inp_bias_in (inp_in_bias0[31:0]) //|< w
,.inp_flow_in (inp_in_flow0) //|< w
,.inp_frac_in (inp_in_fraction0[34:0]) //|< w
,.inp_in_pvld (chn_inp_in_pvld) //|< i
,.inp_offset_in (inp_in_offset0[31:0]) //|< w
,.inp_out_prdy (chn_inp_out_prdy) //|< i
,.inp_scale_in (inp_in_scale0[15:0]) //|< w
,.inp_shift_in (inp_in_shift0[4:0]) //|< w
,.inp_x_in (inp_in_x0[31:0]) //|< w
,.inp_y0_in (inp_in_y0_0[15:0]) //|< w
,.inp_y1_in (inp_in_y1_0[15:0]) //|< w
,.inp_data_out (chn_inp_out_data0[31:0]) //|> w
,.inp_in_prdy (chn_inp_in_prdy0) //|> w
,.inp_out_pvld (chn_inp_out_pvld0) //|> w
,.nvdla_core_clk (nvdla_core_clk) //|< i
,.nvdla_core_rstn (nvdla_core_rstn) //|< i
);

assign   inp_in_x0[31:0]        = chn_inp_in_pd[32*0+31:32*0]; 
assign   inp_in_fraction0[34:0] = chn_inp_in_pd[35*0+32+34:35*0+32]; 
assign   inp_in_y0_0[15:0]      = chn_inp_in_pd[16*0+67+15:16*0+67]; 
assign   inp_in_y1_0[15:0]      = chn_inp_in_pd[16*0+83+15:16*0+83]; 
assign   inp_in_scale0[15:0]    = chn_inp_in_pd[16*0+99+15:16*0+99]; 
assign   inp_in_shift0[4:0]     = chn_inp_in_pd[5*0+115+4:5*0+115]; 
assign   inp_in_offset0[31:0]   = chn_inp_in_pd[32*0+120+31:32*0+120]; 
assign   inp_in_bias0[31:0]     = chn_inp_in_pd[32*0+152+31:32*0+152]; 
assign   inp_in_flow0           = chn_inp_in_pd[0+184]; 


//| eperl: generated_end (DO NOT EDIT ABOVE)
assign chn_inp_in_prdy = chn_inp_in_prdy0;
assign chn_inp_out_pvld = chn_inp_out_pvld0;
endmodule // NV_NVDLA_SDP_HLS_Y_inp_top