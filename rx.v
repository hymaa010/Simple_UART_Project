module rx (input in,clk,reset,output reg [7:0] dataout);
integer i;
reg [7:0] temp;
always @(posedge clk or posedge reset) begin
    if (reset) begin
        i<=0;
        temp<=0;
        dataout<=0;
    end
    else if(i==9)
    begin
        i<=0;
        dataout<=temp;
    end
    else begin
        temp<={in,temp[7:1]};
        i<=i+1;
    end
end 
endmodule

	