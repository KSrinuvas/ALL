//data flow modelling.
module inverter (vout, vin);
  output vout;
  input  vin;
  assign vout = ~vin;
endmodule