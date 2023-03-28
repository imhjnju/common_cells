module priority_encoder
#(
    IN_WIDTH = 8,
    OUT_WIDTH = 3
)
(
    input clk,
    input rst_n,
    input [IN_WIDTH - 1 : 0] in,
    output [OUT_WIDTH - 1 : 0] out
)
    integer i;
    always@(*) begin
        out = 0;
        for(i = 0; i < IN_WIDTH; i++) 
            if(in[i])
                out = i;
    end

endmodule