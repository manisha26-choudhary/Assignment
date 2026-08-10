//******************1.****************************
/*module tb;
  initial begin 
    EtherPacket p=new();
    $display("value of data is %0h",p.send(32'haabbccdd));
  end
endmodule*/
//****************2./3./4./5.******************************
module tb;
  initial begin 
    A p=new();
   // p.b={>>8{p.a}};
   // p.b={<<8{p.a}};
   // p.d={<<{p.a,p.b,p.c}};
    //{>>{p.b,p.c,p.d}}=p.a;
    p.b = {<<8{p.a}};
   // $display("value of data b=%0h c=%0h and d=%0h",p.b,p.c,p.d);
    $display("the swaped byte is %0h",p.b);
  end
endmodule
    