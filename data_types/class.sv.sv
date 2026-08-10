// Code your design here
/*class cons;
   rand byte a[];
  rand int s;
 // int s=0;
  constraint c1{a.size==5;}
  //constraint c2{a.sum==500;}
  constraint c2{foreach (a[i])
    a[i] inside {[0:100]};
               // a.sum==500;
               // s+=a[i];
               // s==500;
                s==a[0]+a[1]+a[2]+a[3]+a[4];
               s==500;
               }
endclass

module tb;
  cons c=new();
  initial begin
    if(c.randomize()) begin 
  $display("array=%0p",c.a);
    end
    else
      $display("randomization failed");
  end
endmodule
//*****************************ASSOCIATIVE ARRAY METHODS*************************************************************
module tb;
int imem[int];
  int idx;
  initial begin
    
imem[ 3 ] = 1;
imem[ 16'hffff ] = 2;
imem[ 4'b1000 ] = 3;
//$display( "%0d entries\n", imem.num );
    if(imem.exists(3))
      imem.delete(3);
   // $display("aa is %0p and %0d entries",imem, imem.num);
   // $display("first value is %0h and last value is &0h",imem.first(idx),imem.last(idx));
  end
endmodule
//********************************QUEUE******************************************************************************
module tb;
  int mem[$]={10,20,30,40,50};
  int temp[$];
  initial begin
   // temp=mem[1:3];
   // temp=mem[2:$];
   // temp={1,mem[2:$],2};
    
    $display("value is %0p",temp);
  end
endmodule
//////////////////////manipulator method////////////////
module tb;
  int mm[string];
  int aa[int];
  int que[$]={1,2,3,4,5,6,7};
  int i[$];
  initial begin
    aa[1]=1;
    aa[6]=7;
    aa[3]=3;
   // i=aa.find(x) with (x>5);
   //i=aa.find_index with (item==7);
    i=aa.unique;
    
    $display("value is %0p",i);
  end
endmodule
//************************ordering_method*************************
module tb;
  int aa[int];
  int que[$];
  int i[$];
        initial begin
      	aa[1]=1;
    aa[6]=7;
    aa[3]=3;
         // aa.reverse;
         // aa.sort;
          aa.sort with (item ==7);
          $display("value is %0p",aa);
        end
      
endmodule
//*********************reduction_method**************************
module tb;
  int aa[]={1,2,3,4,5};
  logic[7:0] a[2][2]='{'{8'd1,8'd2},'{8'd2,8'd3}};
  int que[$];
  int i;
  initial begin
  	//i=aa.sum;
   // i=aa.product;
   // i=aa.xor with (item>3);
    i= a.sum with (item.sum with (item)); 
    $display("value is %0d",i);
  end
endmodule*/
/*class example;
   integer i=1;
   function integer get();
    get=i;
  endfunction
endclass

class exam extends example;
  integer i=2;
   function integer get();
    get=i;
  endfunction
endclass

module tb();
  initial begin
  example example_1;
    exam exam_1;
  example_1=exam::new();
    if ($cast(exam_1, example_1))
   // repeat(5)
      begin
       // example_1.randomize();
       // exam_1.randomize();
       // $display("value of i from example is %0d",example_1.get());
        $display("value of i from exam is %0d",exam_1.i);
      end   
  end
endmodule
//**********************************************************************************8
class B;
rand int unsigned a;
rand int b;
endclass
class A;
  rand int k;
  rand byte l;
  rand logic m;
  rand B b1[];
  constraint c1 {b1.size==5;}
endclass
module p;
  A a1;
  initial begin 
    a1=new();
    assert(a1.randomize());
   // a1.b1=new();
    foreach (a1.b1[i])
       if (a1.b1[i]==null)
       a1.b1[i]=new();
    a1.randomize();
    foreach(a1.b1[i])
      $display("b1[%0d]:a=%0d b=%0d", i,a1.b1[i].a,a1.b1[i].b);  
   // $display("size is %0d b1[%0d]:a=%0d b=%0d ", a1.b1.size,i,a1.b1[i].a,a1.b1[i].b);
  end
endmodule
//*******************************************************************************************
class A;
  int flag;  
endclass
module tb;
  A a[$:5];
  initial begin
   // a.push_back(A::new());
   // repeat(5) begin 
    for (int i=a.size();i<5;i++) begin
      A b=new();
      b.flag=$size(a);
      a.push_back(b);
    end
   // begin
 	//0;
    foreach(a[i]) 
      $display("%0d",a[i].flag);   
    $display("%0d",a.size);
  end
endmodule
//***************************Static class & method**********************************
 class B; 
   static int current = 0;
	static function int next_id();
	next_id = ++current; // OK to access static class property
	endfunction 
endclass
module tb;
   B b1;
  initial begin
 // B b1=new();
    repeat(5) begin
   // b1.randomize();
   // $display("next_id is %0d",b1.next_id);
      $display("next_id is %0d",B::next_id);
    end
  end
endmodule*/
//**********************COPY****************************************************
class baseA ;
 integer j=5 ; 
endclass 
class B ;
 integer i=1 ;
  baseA a = new;
endclass 
class xtndA extends baseA; 
rand int x;
constraint cst1 { x < 10; }
endclass 
module test;
baseA base2, base3;
  initial begin
  B b1=new;
  B b2 = new b1;
  xtndA xtnd1 = new();
    b2.i=10;
    b2.a.j=50; 
  xtnd1.x = 3;
base2 = xtnd1;
base3 = new base2;
   // repeat(5) begin
    b1.randomize();
    $display("b2 updated not b1",b2.i,b1.i);
 // end
  end
endmodule 




