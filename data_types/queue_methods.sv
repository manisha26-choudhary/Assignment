// **************************slicing_operator********************
/*class A;
  rand bit size;
 // constraint c1{a.size==64;}
endclass

module tb;
  int a [63:0];
  int i=0;
  int j=0;
  int temp[3:0];
  initial begin
  A ab=new();
    ab.randomize();
    for (i=0;i<64;i+:4)begin
     // for(j=0;j<4;j++)begin
        a[i+j]=i;     
      $display("a[%0d] temp[%0d]is %0d ",i,j,a[i+j]);
  end
    end 
 // end
endmodule
//***************  1   ********************************
/*module tb;

  bit [63:0] a;
  bit [3:0] temp[15:0];
  int i, j;

  initial begin
    a = 64'h1234_5678_9ABC_DEF0;

    for (i = 0; i < 16; i++) begin
      for (j = 0; j < 4; j++) begin
        temp[i][j] = a[i*4 + j];
      end
      $display("temp[%0d] = %h", i, temp[i]);
    end
  end

endmodule
//***************  2  ********************************
class a#(type t=int);
  t p;
  t b;
endclass
 module tb;
    initial begin
      a #(string) a_1=new();
      a_1.p="hello";
      a_1.b="hey";
      $display("%0s %0s ",a_1.p,a_1.b);
    end
  endmodule*/
//***************  3   ********************************
/*class A#(type T=int);
  T a;
  T b;
  T c;
endclass
 module tb;
    initial begin
      A #(string) a_1=new();
      a_1.a="hello";
      a_1.b="hey";
      a_1.c="yey";
      $display("%0s %0s ",a_1.a,a_1.b);
    end
   initial begin
      A #(int) b_1=new();
      b_1.a=10;
      b_1.b=20;
      b_1.c=30;
     $display("%0d %0d ",b_1.a,b_1.b);
    end
  initial begin
      A #(bit[7:0]) c_1=new();
      c_1.a=8'hab;
      c_1.b=8'haa;
      c_1.c=8'hbb;
      $display("%0h %0h ",c_1.a,c_1.b);
    end
 endmodule
 //***************  4   ********************************
class base #(type t=int);
  t data;
endclass
class child_1 extends base;
  t addr;
endclass
class child_2 extends base;
  t id;
endclass
module tb;
initial begin
  child_1 #(int) c_1=new();
  c_1.data=10;
    c_1.addr=20;
  $display("%0d %0d ",c_1.data,c_1.addr);
end
initial begin
  child_2 #(string) c_2=new();
  c_2.data="10";
    c_2.id="20";
  $display("%0s %0s ",c_2.data,c_2.id);
end
endmodule
//***************  5   ********************************
class base #(type t=int);
  t a;
endclass
class child #(type t=int)extends base #(t) ;
  t b;
endclass
class grandchild #(type t=int)extends child ;
  t c;
endclass
module tb;
initial begin
  grandchild #(bit[15:0]) obj =new();
  obj.a=16'h1111;
  obj.b=16'h2222;
  obj.c=16'h3333;
  $display("value of a=%0h, b=%0h and c=%0h",obj.a,obj.b,obj.c);  
end
endmodule
//***************  6   ********************************
class person #(type t=int);
  t name;
endclass
class student #(type t=int)extends person #(t) ;
  int roll_no;
endclass
class employee #(type t=int)extends person #(t) ;
  int emp_id;
endclass
class manager #(type t=int)extends employee #(t) ;
  string department;
endclass

module tb;
initial begin
  manager #(string) obj =new();
  obj.name="manisha";
  obj.emp_id=123;
  obj.department="verification";
  $display("name=%0s, emp_id=%0d and dept=%0s",obj.name,obj.emp_id,obj.department);
  end
endmodule
//*************** 7   ********************************
class header #(type t=int) ;
  t addr;
  t data;
endclass
class packet #(type t=int) ;
  header #(t) hdr;
  function new();
    hdr=new();
  endfunction
endclass
module tb;
initial begin
  packet #(string) obj =new();
  obj.hdr.addr="90";
  obj.hdr.data="09";
  $display("addr=%0s, data=%0s",obj.hdr.addr,obj.hdr.data);
  end
  initial begin
    packet #(int) object =new();
     object.hdr.addr=01;
  object.hdr.data=23;
    $display("addr=%0d, data=%0d",object.hdr.addr,object.hdr.data);
	end
endmodule 
//***************  8  ********************************
class base #(type t=int);
  t a;
endclass
class child1 #(type t=int)extends base #(t) ;
  t b;
endclass
class child2 #(type t=int)extends base #(t) ;
  t c;
endclass
class grandchild #(type t=int)extends child1#(t) ;
  t d;
endclass
module tb;
initial begin
  grandchild #(string) obj =new();
  obj.a="hello";
  obj.b="manisha";
  obj.d="are";
  $display("%0s %0s %0s",obj.a,obj.b,obj.d);  
end
  initial begin
  child2 #(bit[31:0]) object =new();
  object.a=32'h1111234567;
  object.c=32'h3333112233;
    $display("value of a=%0h and c=%0h ",object.a, object.c);
end 
endmodule
//***************  9  ********************************
class queue #(type t=int);
  t q[$];
endclass
module tb;
  initial begin
    queue #(int) a=new();
    a.q.push_back(10);
    a.q.push_back(20);
    a.q.push_back(30);
    foreach (a.q[i])
      $display("queue is %0d",a.q[i]);
  end
  initial begin
    queue #(string) b=new();
    b.q.push_back("hello");
    b.q.push_back("world");
    b.q.push_back("30");
    foreach (b.q[i])
      $display("queue is %0s",b.q[i]);
  end
  initial begin
    queue #(bit[7:0]) b=new();
    b.q.push_back('haa);
    b.q.push_back('hbb);
    b.q.push_back('h25);
    foreach (b.q[i])
      $display("queue is %0h",b.q[i]);
  end
endmodule*/
//***************  10   ********************************

