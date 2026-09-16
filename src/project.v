`default_nettype none

module tt_um_kamalesh_halfadder (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path
    input  wire       ena,      // always 1 when powered
    input  wire       clk,      // clock (unused)
    input  wire       rst_n     // reset_n (unused)
);

    // Half Adder logic
    assign uo_out[0] = ui_in[0] ^ ui_in[1]; // sum
    assign uo_out[1] = ui_in[0] & ui_in[1]; // carry

    // Unused outputs
    assign uo_out[7:2] = 0;
    assign uio_out     = 0;
    assign uio_oe      = 0;

    // Prevent unused warnings
    wire _unused = &{ena, clk, rst_n, ui_in[7:2], 1'b0};

endmodule
