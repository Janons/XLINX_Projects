
module counter(

    input wire logic clk,
    output logic[3:0] led
);

//we can change this however we want
logic [31:0] cnt = 0;  // 32-bit counte

//implementation of a counte
always_ff @posedge(clk) begin

    cnt <= cnt+1;
    led[0] <= cnt[27];
    led[1] <= cnt[24];
    led[2] <= cnt[22];
    led[3] <= cnt[20];

end


endmodule