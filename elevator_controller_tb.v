`timescale 1ns/1ps

module elevator_controller_tb;

    reg clk;
    reg rst;

    reg req_floor1;
    reg req_floor2;
    reg req_floor3;

    wire [1:0] current_floor;
    wire door_open;

    elevator_controller uut(

        .clk(clk),
        .rst(rst),

        .req_floor1(req_floor1),
        .req_floor2(req_floor2),
        .req_floor3(req_floor3),

        .current_floor(current_floor),
        .door_open(door_open)

    );

    always #5 clk = ~clk;

    initial
    begin

        clk = 0;
        rst = 1;

        req_floor1 = 0;
        req_floor2 = 0;
        req_floor3 = 0;

        #10 rst = 0;

        // Request Floor 3
        #10 req_floor3 = 1;
        #10 req_floor3 = 0;

        // Wait

        #50;

        // Request Floor 1
        #10 req_floor1 = 1;
        #10 req_floor1 = 0;

        #80;

        $finish;

    end

endmodule
