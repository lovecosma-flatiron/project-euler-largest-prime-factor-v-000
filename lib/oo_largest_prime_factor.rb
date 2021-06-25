# Enter your object-oriented solution here!
class LargestPrimeFactor
    attr_accessor :input

    def initialize input

        @input = input

    end 

    def number

        max = -1

        while @input % 2 == 0
            max = 2 
            @input  = @input / 2
        end 

        counter = 3

        while counter <= Math.sqrt(@input)

            while @input % counter == 0

                max = counter
                @input = @input / counter 
                
            end 
            counter += 2
        end 

        if @input > 2
            max = @input 
        end 
        max
    end 

end 