//behaviural modelling
module d_flip_flop(data_in,data_out,clock);
input data_in;
input clock;
output data_out;
reg data_out;
always@(posedge clock)
begin
 data_out<=data_in;
end
endmodule
