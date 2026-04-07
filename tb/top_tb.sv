`include "src/top.sv"
`timescale 1ns/1ps         // Set tick to 1ns. Set sim resolution to 1ps.

/**
 * Note:
 *  The TB below is only an example of a testbench written in SV.
 *  Adapt this for your lab assignments as you see fit.
 *  An example clk signal has been added to show what a signal decl and usage looks like.
 *     You are welcome to delete the clk signal if it's not needed.
 *     For instance, purely combinational circuits do not need clks.
 *     So for labs without sequential elements, you can remove them.
 */

module top_tb;

/** declare tb signals below */
logic [3:0] tb_bcd; 
logic [6:0] tb_seg7;


/** declare module(s) below */
top dut                    // declare an inst of top called "dut" (device under test)
(
    /** hook up tb signals to dut signals */
    .bcd(tb_bcd),
    .seg7(tb_seg7)
);


initial begin
    $dumpfile("build/top.vcd"); // intermediate file for waveform generation
    $dumpvars(0, top_tb);       // capture all signals under top_tb
end

initial begin
    /** testbench logic goes below */
        tb_bcd = 4'd0;
        #2;
    
        tb_bcd = 4'd1;
        #2;
  
        tb_bcd = 4'd2;
        #2;
        
        tb_bcd = 4'd3;
        #2;

        tb_bcd = 4'd4;
        #10;

        tb_bcd = 4'd5;
        #10;

        tb_bcd = 4'd6;
        #10;

        tb_bcd = 4'd7;
        #10;

        tb_bcd = 4'd8;
        #10;
 
        tb_bcd = 4'd9;
        #10;

        tb_bcd = 4'd10;
        #10;

        tb_bcd = 4'd11;
        #10;

        tb_bcd = 4'd12;
        #10;

        tb_bcd = 4'd13;
        #10;

        tb_bcd = 4'd14;
        #10;
  
        tb_bcd = 4'd15;
        #10;

        $finish;  // end simulation, otherwise it runs indefinitely
end

endmodule
