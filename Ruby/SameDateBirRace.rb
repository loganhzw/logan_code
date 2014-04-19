def same_date_birthday_race n
	ns = 1.00
	for i in 0..49 do
		ns = ns * (365-i)/365
	end

	return (1-ns) * 100
	
end

num = 50
puts same_date_birthday_race 50