module counter (input reset ,clk,output reg [3:0] out ,output reg enable);

always @(posedge clk or posedge reset) begin
    if (reset) 
        out <= 0;
    else if (out == 4'b1001) begin
        out <= 0;
        enable <= 1;
    end
    else begin
        out <= out + 1;
        enable <= 0;
    end
    
end
endmodule