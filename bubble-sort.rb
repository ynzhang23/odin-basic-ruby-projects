=> [0,2,2,3,4,78]

def bubble_sort(array)
    sorted = array.each_with_index do |element, current_index|
        unless element < array[current_index + 1]
            array[current_index], array[current_index + 1] = array[current_index + 1], array[current_index]
        end
    end
end

p bubble_sort([4,3,78,2,0,2])