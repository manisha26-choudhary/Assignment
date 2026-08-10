//*************1.pure_virtual_method********************************
/*virtual class BasePacket;
pure virtual function integer send(bit[31:0] data); // No implementation
endclass
  
class EtherPacket extends BasePacket;
//virtual function integer send(bit[31:0] data);
  function integer send(bit[31:0] data);
  $display("EtherPacket");
    return data;
   // return 1;
endfunction 
endclass */
//************************2.operators   *******************************
/*class A;
  logic[31:0] a=32'habcdabcd;
  logic [7:0] b[4];
endclass*/
//******************3.packing********************************************
/*class A;
  logic[15:0] a=16'haabb;
  logic [7:0] b=8'hcd;
  logic [7:0] c=8'hef;
  logic [31:0] d;
endclass*/
//****************4.unpacking ************************************8888888
/*class A;
  logic [31:0] a = 32'h abcdabcd;
  logic [15:0] b;
  logic [7:0] c;
  logic [7:0] d;
endclass*/
//***********5. byte swapping **********************************88
class A;
  logic [31:0] a=32'h aabbccdd;
  logic [31:0] b;
endclass

  

