`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:13 10/26/2018 
// Design Name: 
// Module Name:    driver_test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module driver_test (
  input wire clk,
  input wire [7:0] a,
  input wire iorq_n,
  output wire [7:0] d,
  output wire busdir
  );
  
  reg [29:0] cont;
  always @(posedge clk)
    cont <= cont + 30'd1;
  
  wire acceso = |{iorq_n,a[7:1]};
  assign busdir = acceso;
  wire port00 = ~acceso & ~a[0];
  wire port01 = ~acceso &  a[0];
  
  assign d = (port00)? cont[21:14] :
             (port01)? cont[29:22] :
             8'hZZ;
endmodule
