/*module tb();
  typedef struct packed {
  int a;
  byte b;
  bit[7:0] c;
} my_struct;
my_struct s1;
logic[47:0] me;
  initial begin 
    me=48'h112233445566;
	s1 = me;
    $display("a is %0h",s1.a);
    $display("b is %0h",s1.b);
    $display("c is %0h",s1.c);
  end
endmodule
///****************************************
module tb();
  typedef union packed{
  int a;
 // byte b;
    logic[31:0] c ;
   
  } my_union;
my_union s1,s2;
//logic[47:0] me;
  initial begin 
    s1=32'h11223344;
	s2 = s1;
    if(s1==s2)begin
      $display("a is %0h",s2.a);
      //$display("b is %0h",s2.b);
      $display("c is %0h",s2.c);
    end
  end
endmodule
//***************************************************************8888888
module tb();
  bit[3:0]a;
  initial begin
  for(a=0;a<16;a++)
    begin
      $display("a=%0d",a);
    end 
    end
endmodule
//***********************************************************************
module tb();
  bit[3:0]a;
  int i;
  initial begin
    a=0;
    for(i=0;i<16;i++)
    begin
      a=a+1;
      $display("i=%0d and a=%0d",i,a);
    end 
    end
endmodule
//***********************************************************************************************************
module tb;
  bit[7:0]a[100];
   int i,j;
  bit [7:0]temp;
  initial begin
   // a[i]=0;
    for(i=0;i<100;i++)
    begin
      //a[i]=0;
      a[i]=i+1;
     // $display("i=%0d and a[%0d]=%0d",i,i,a[i]);
    end 

    for(i=0;i<50;i++)
    begin
      temp=a[i];
      a[i]=a[99-i];
      a[99-i]=temp;
       //$display("i=%0d and a[%0d]=%0d",i,i,a[i]);
    end
    for(i=0;i<100;i=i+5)
      for(j=0;j<2;j++)
    begin
      temp=a[i+j];
      a[i+j]=a[i+4-j];
      a[i+4-j]=temp;
       //$display("i=%0d and a[%0d]=%0d",i,i,a[i]);
    end
    for (i=0;i<100;i++)
       $display(" a[%0d]=%0d",i,a[i]);
  end
endmodule
//*********************************************************************************************************************************
module tb;
  bit[7:0]a[];
  bit[7:0]b[];
  int i,j;
  initial begin
    a=new[5];
   // a=new[8];
  foreach (a[i])
    a[i]=i+1;
    b=new[a.size()-1];
    for (i=0;i<a.size();i++) begin
      if(i!=3)begin
        b[j]=a[i];
        j++;
      end
         end
    a=b;     
 // a=new[8](a);
 //   a=new[5](a);
   // a[5]=5;
   // a[6]=7;
   // a[7]=6;
    foreach(a[i])
      $display("a[%0d] =%0d", i,a[i]);
    $display("size=%0d",a.size());
  end
endmodule
//***************************************************************************************************************
module tb;
  int a[][];
  int i,j;
  
  initial begin
    a=new[5];
    foreach (a[i])
      a[i]=new[4];
    
    foreach (a[i,j])
      a[i][j]=i*10+j;
    
    foreach(a[i][j])
    $display("a[%0d][%0d] =%0d", i,j,a[i][j]);
    $display("size=%0d",a.size());
  end   
endmodule*/
//************************************************************************************************************************


