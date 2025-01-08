module test();
    reg clk,reset;
    wire[7:0] out;
    always #20 clk=~clk;
    UART c1(reset,clk,out);

    initial begin
        clk=0;
        reset=1;
        #40;
        reset=0;
        #520000;
        $stop;
    end
endmodule