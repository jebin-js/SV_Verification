class transaction;
  
  rand bit a;
  rand bit b;
  rand bit cin;
  
  bit sum;
  bit carry;
  
    function void display(string name );
    
    $display("===================%s=======================",name);
      $display("a = %0b,b = %0b,cin = %0b,sum = %0b,carry = %0b",a,b,cin,sum,carry);
    $display("___________________________________________________");
    $display("                                                   ");
    
  endfunction
  
endclass

