`timescale 10ns/1ps
/*interface class A;
  pure virtual function void display();
    endclass
    
class B implements A;
  virtual function void display();
    $display("print from implemented class");
  endfunction
endclass*/
///************simple example of interface classes****************
/*interface class PutImp#(type PUT_T = logic);
  pure virtual function void put(PUT_T a);
endclass 
  
interface class GetImp#(type GET_T = logic);
  pure virtual function GET_T get();
endclass 
    
class Fifo#(type T = logic, int DEPTH=1) implements PutImp#(T), GetImp#(T);
T myFifo [$:DEPTH-1];
virtual function void put(T a);
myFifo.push_back(a);
endfunction 
virtual function T get();
get = myFifo.pop_front();
endfunction 
endclass 
    
class Stack#(type T = logic, int DEPTH=1) implements PutImp#(T), GetImp#(T);
T myFifo [$:DEPTH-1];
virtual function void put(T a);
myFifo.push_front(a);
endfunction 
virtual function T get();
get = myFifo.pop_front();
endfunction 
endclass*/ 
 ///////////both extending a base class and implementing two interface classes//////////
interface class PutImp#(type PUT_T = logic);
  pure virtual function void put(PUT_T a);
endclass
    
interface class GetImp#(type GET_T = logic);
  pure virtual function GET_T get();
endclass
    
class MyQueue #(type T = logic, int DEPTH = 1);
    T PipeQueue[$:DEPTH-1];
  virtual function void deleteQ();
    PipeQueue.delete();
  endfunction 
endclass 
    
class Fifo #(type T = logic, int DEPTH = 1)extends MyQueue#(T, DEPTH)implements PutImp#(T), GetImp#(T);
  virtual function void put(T a);
    PipeQueue.push_back(a);
  endfunction 
  virtual function T get();
    get = PipeQueue.pop_front();
  endfunction 
endclass 
  