module Tb_d_flip_flop();
reg data_in;
reg clock;
wire data_out;

d_flip_flop UUT(.data_in(data_in),
.data_out(data_out),
.clock(clock));

initial begin
// Initiliaze Input Stimulus
 data_in = 0;
 clock = 0;
 end

 always #100 clock=~clock;

 //Stimulus
 initial
 begin
 #100 data_in = 1'b0;
 #100 data_in = 1'b1;
 #600 data_in = 1'b0;
 #500 data_in = 1'b1;
 #200 data_in = 1'b0;
 #100 $stop;
 end

endmodule
