module inverter_TB();
  wire vout;
  reg vin;
  //Instantiate the module.
  inverter INVTB(.vin(vin), .vout(vout));    
  initial
    begin
      vin = 1'b0;
      #200 $stop;
    end
  always
    #20 vin = ~vin; 
endmodule
