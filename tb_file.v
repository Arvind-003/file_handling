module tb;
integer a;
integer fh;

initial begin
    fh=$fopen("mux.log");
    repeat(10) begin
        #1;
        a=$random;
    end
    #10;
    $fclose(fh);
    $finish;
end
initial begin
    $fmonitor(fh,"a=%d",a);
end
endmodule