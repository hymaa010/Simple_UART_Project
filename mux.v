module mux ( input[7:0] in,input[3:0] sel, output reg tx);
always @(*) begin
   case (sel)
    4'b0000 : tx=0;
    4'b0001 : tx=in[0];
    4'b0010 : tx=in[1];
    4'b0011 : tx=in[2];
    4'b0100 : tx=in[3];
    4'b0101 : tx=in[4];
    4'b0110 : tx=in[5];
    4'b0111 : tx=in[6]; 
    4'b1000 : tx=in[7]; 
    4'b1001 : tx=0;
   endcase 
end
endmodule