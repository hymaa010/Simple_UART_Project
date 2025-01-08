module TX (
    input reset,clk ,output tx
);
wire [3:0] sel1 ;
wire [7:0] data;
wire clk2;
mux m1(data,sel1,tx);
counter m2(reset,clk ,sel1,clk2);
datacounter m3(reset,clk2,data);
endmodule