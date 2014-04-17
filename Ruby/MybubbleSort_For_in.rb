def bubble_sort(array)
	for i in 0..(array.size - 1)
		# for i in 0..(slist.length - 1)
		for j in (i+1)..(array.size - 1)
			temp1 = array[i]
			temp2 = array[j]
			if array[i] > array[j]
				array[i], array[j] = temp2, temp1
			end
		end
	end
	return array
end

# Below is the test

array = [5, 7, 3, 2, 9]
puts "Before sort, the Array is: "
array.each do |item|
	print item
	print ' '
end
puts
puts "After sort, the Array is: "
bubble_sort(array)
array.each do |item|
	print item
	print ' '
end
puts