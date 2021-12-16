require 'pry-byebug'

def stock_picker(array)

    value_array = []
    #what is the lowest value with the lowest index
    #what is the highest value with the highest index
    #find higest number after the lowest number from the start
    #after you find the lowest number, find the highest number after that
    array.reduce {|lowest, current|
        if array.index(current) > array.index(lowest) and current < lowest
            shifted_array = array.shift(current)
            highest = array.max
            shifted_array.concat(array)
            return [shifted_array.index(current),shifted_array.index(highest)]
        else
            lowest
        end
        
    }
end

number_array = [6,8,1,3,15,6,4,17,10] 

p stock_picker(number_array)
