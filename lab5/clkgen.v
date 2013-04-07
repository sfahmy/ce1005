// divides clock by 2^25 to give around 1/3 s period
module clkgen( input    clk_in,
               output   clk_out );

reg [24:0] counter = 25'd0;

always @(posedge clk_in)
begin
    counter <= counter + 1'b1;
end

assign clk_out = counter[24];

endmodule
