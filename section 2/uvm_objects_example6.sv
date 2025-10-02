`include "uvm_macros.svh"
import uvm_pkg::*;
     
     
class first extends uvm_object; 
      
    rand bit [3:0] data;
      
    function new(string path = "first");
        super.new(path);
    endfunction 
      
    `uvm_object_utils_begin(first)
    `uvm_field_int(data, UVM_DEFAULT);
    `uvm_object_utils_end
      
endclass
     
////////////////////////////////////////////
     
module tb;
    
    first f;
    first s;
    
    ////Copy method
    /* 
    initial begin
        f = new("first");
        s = new("second");
        f.randomize();
        s.copy(f);
        f.print();
        s.print();
      
    end
      
    */
      
    ////Clone method
    initial begin
        f = new("first");
        f.randomize();
        $cast(s, f.clone()); //f.clone returns handle to an uvm_object thus needs to be casted to the proper type
        f.print();
        s.print();
    end
      
endmodule
