class Calculator
   def initialize(num1,num2)
      @num1 = num1.to_f
      @num2 = num2.to_f
      @span = "<span class =\"calc\">"
   end

   def add
      @action = "Sum"
      "<h2>#{@action}: #{@span}#{@num1+@num2}</span></h2>"
   end

   def subt
      @action = "Difference"
      "<h2>#{@action}: #{@span}#{@num1-@num2}</span></h2>"
   end


   def mult
      @action = "Product"
      "<h2>#{@action}: #{@span}#{@num1*@num2}</span></h2>"
   end

   def div
      @action = "Quotient"
      "<h2>#{@action}: #{@span}#{@num1/@num2}</span><br/>Or #{@span}#{@num1.to_int / @num2.to_int}</span> with a remainder of #{@span}#{@num1.to_int % @num2.to_int}</span>"
   end

   def root
      @sqrt1 = "Square root of #{@num1} is: <br>#{@span}#{Math.sqrt(@num1)}</span>"
      @sqrt2 = "Square root of #{@num2} is: <br>#{@span}#{Math.sqrt(@num2)}</span>"
      "<h2>#{@sqrt1}<br/>#{@sqrt2}</h2>"
   end

   def exp
      @action = "Product"
      "<h2>#{@num1} to the power of #{@num2} is: #{@span}#{@num1**@num2}</span></h2>"
   end
end
