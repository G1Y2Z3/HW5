module lfsr (clk, set, out);
    input clk,set;
    output reg[2:0] out;
    always @(posedge clk) begin
        if (set) 
            out<=3'b110;
        else 
            out<={out[1], out[0], out[0] ^ out[2]};
    end
    
endmodule

/*  1   3   7   6   5   2   4
    001 011 111 110 101 010 100     */