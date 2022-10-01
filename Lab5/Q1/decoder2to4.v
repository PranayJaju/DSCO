module decoder2to4(A, En, D);
    input [1:0]A;
    input En;
    output [3:0]D;
    reg [3:0]D;
    always@(A or En)
    begin
        if(En==0)D=0;
        else if(A==0)D=1;
        else if (A==1)D=2;
        else if(A==2)D=4;
        else D=8;
    end
endmodule    