def bubble_sort(array)
    counter = array.length
    loop do
        swapped = false
        array.each_with_index do | element, index |
            break if index == counter - 1

            next_val = array[index+1]
            if element > next_val then
                swapped = true
                array[index], array[index+1] = next_val, element
            end
        end
        counter -= 1
        break if !swapped || counter == 0
    end
    array
end

def rand_array(x, max)
    x.times.map{ Random.rand(max) }
end

10.times do
    to_sort = rand_array(Random.rand(30), 30 + Random.rand(500))
    p bubble_sort(to_sort) == to_sort.sort
end