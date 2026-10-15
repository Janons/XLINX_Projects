module top(

    input wire logic [1:0] sw,
    output logic [3:0]led,
    input wire logic [2:0] btn,
);

    always_comb begin
        
        if (btn[0]) begin
            led <= 4'b0000;
        end

        else begin

            if (sw[0] && !sw[1]) begin

                led[3:0] = btn[1]? 4'b1001: 1'b0110;
                
            end


        end
    end

    //buttons implementations

endmodule



//what do I want to achieve
//if button 0 is touched the leds cant be turned on
//if button 1 is touched only value 0-1
//if button 2 -> 2-3