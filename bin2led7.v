module bin2led7(enable, bin_in, led_out);
    input enable;
    input[3:0] bin_in;
    output[6:0] led_out;
    

    
    reg[6:0] out_int;
    assign led_out = ~out_int;
    
    always @(enable or bin_in) begin
        if (enable) begin 
    


            case (bin_in)
                4'b0000: out_int = 7'b1111110; //0
                4'b0001: out_int = 7'b0110000; //1
                4'b0010: out_int = 7'b1101101; //2
                4'b0011: out_int = 7'b1111001; //3
                4'b0100: out_int = 7'b0110011; //4
                4'b0101: out_int = 7'b1011011; //5
                4'b0110: out_int = 7'b1011111; //6
                4'b0111: out_int = 7'b1110000; //7
                4'b1000: out_int = 7'b1111111; //8
                4'b1001: out_int = 7'b1111011; //9
                default: out_int = 7'bz; 
            endcase
        end
        
        else out_int = 7'bz;
    end
    
endmodule
