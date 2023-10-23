module demux4 (
output reg [3:0] Y, 
input      [1:0] A, 
input            din
);
 always @(*) begin
         Y[3:0] = 4'b0000; // To prevent Latch.
    case (A)
         2'b00 :begin 
						Y[0] = din; 
						Y[1] = 1'b0;
						Y[2] = 1'b0;
						Y[3] = 1'b0;
					 end
                 
         2'b01 :begin 
						Y[0] = 1'b0; 
						Y[1] = din;
						Y[2] = 1'b0;
						Y[3] = 1'b0;
					 end 
                 
         2'b10 : begin 
						Y[0] = 1'b0; 
						Y[1] = 1'b0;
						Y[2] = din;
						Y[3] = 1'b0;
					 end 
         2'b11 : begin 
						Y[0] = 1'b0; 
						Y[1] = 1'b0;
						Y[2] = 1'b0;
						Y[3] = din;
					 end 
                 
    endcase  
 end
 
endmodule
