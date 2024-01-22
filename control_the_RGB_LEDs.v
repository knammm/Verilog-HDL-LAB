module ex3(switch_0, switch_1, bin_in, led_out_4, led_out_5);
    input switch_0, switch_1;
    input [3:0]bin_in;
    output reg [2:0] led_out_4, led_out_5;
    always @(switch_0, switch_1, bin_in) begin
        if (switch_0 == 1'b0) begin // 1 LED
            if (switch_1 == 1'b0) begin
                case(bin_in)
                    4'b0001: led_out_4 = 3'b001;
                    4'b0010: led_out_4 = 3'b010;
                    4'b0100: led_out_4 = 3'b100;
                    4'b1000: led_out_4 = 3'b111;
                    default: led_out_4 = 3'b000;
                endcase
            end
            else begin
                case(bin_in)
                    4'b0001: led_out_5 = 3'b001;
                    4'b0010: led_out_5 = 3'b010;
                    4'b0100: led_out_5 = 3'b100;
                    4'b1000: led_out_5 = 3'b111;
                    default: led_out_5 = 3'b000;
                endcase
            end
        end
        else begin // 2 LEDs
            if (switch_1 == 1'b0) begin
                case(bin_in)
                    4'b0000: begin
                        led_out_4 = 3'b000;
                        led_out_5 = 3'b000;
                    end
                    4'b0001: begin
                        led_out_4 = 3'b001;
                        led_out_5 = 3'b001;
                    end
                    4'b0010: begin
                        led_out_4 = 3'b010;
                        led_out_5 = 3'b010;
                    end
                    4'b0100: begin
                        led_out_4 = 3'b100;
                        led_out_5 = 3'b100;
                    end

                    default: begin
                        led_out_4 = 3'b111;
                        led_out_5 = 3'b111;
                    end
                endcase
            end
            else begin
                case(bin_in)
                    4'b0000: begin
                        led_out_4 = 3'b000;
                        led_out_5 = 3'b000;
                    end
                    4'b0001: begin
                        led_out_4 = 3'b011;
                        led_out_5 = 3'b011;
                    end
                    4'b0010: begin
                        led_out_4 = 3'b110;
                        led_out_5 = 3'b110;
                    end
                    4'b0100: begin
                        led_out_4 = 3'b101;
                        led_out_5 = 3'b101;
                    end
                    4'b1000: begin
                        led_out_4 = 3'b111;
                        led_out_5 = 3'b111;
                    end

                    default: begin
                        led_out_4 = 3'b000;
                        led_out_5 = 3'b000;
                    end
                endcase
            end
        end
    end

endmodule