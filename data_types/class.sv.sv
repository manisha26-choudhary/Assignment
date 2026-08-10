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
