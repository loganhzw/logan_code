def bubbleSort(array)
	flag = true
	while flag == true
		i = 0
		flag = false
		while i < array.size-1
			temp1 = array[i]
			temp2 = array[i+1]
			if temp1 > temp2
				array[i], array[i+1] =  temp2, temp1
				flag = true
			end
			i += 1
		end
	end
	return array
end

array = [2, 4, 5, 9, 20, 6, 7, 3, 1, 0]
puts "Before sort the array is: "
array.each do |item|
	print item
	print ' '
end
puts
puts "After sort the array is: "
bubbleSort(array)
array.each do |item|
	print item
	print ' '
end
puts

