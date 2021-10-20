# frozen_string_literal: true

def bubble_sort(array)
  counter = array.length
  loop do
    swapped = false
    array.each_with_index do |element, index|
      break if index == counter - 1

      next_val = array[index + 1]
      if element > next_val
        swapped = true
        array[index], array[index + 1] = next_val, element
      end
    end
    counter -= 1
    break if !swapped || counter.zero?
  end
  array
end

def rand_array(ele, max)
  ele.times.map { Random.rand(max) }
end

10.times do
  to_sort = rand_array(Random.rand(30), Random.rand(30..500))
  p bubble_sort(to_sort) == to_sort.sort
end
