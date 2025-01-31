module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        else
            shut_off_computer = 0; //other condition for the given
    end

    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty;
        else if(~gas_tank_empty)//main condition for the second one it should be inside 
            keep_driving=1'b0;
        else
            keep_driving=1'b0;
    end

endmodule
