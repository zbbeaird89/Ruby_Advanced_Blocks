def bubble_sort(array)
	output = array
	until sorted? output
		output.each_with_index do |num, i|
			left, right = num, output[i + 1]
			if swap?(left, right)
				output[i] = right
				output[i + 1] = left
			end
		end
	end
	output
end

def swap?(a, b)
	b != nil && a > b
end

def sorted? array
	array.each_cons(2).all? do |a, b| 
		unless b.nil?
			a <= b 
		end
	end
end


puts "#{bubble_sort([4, 3, 78, 2, 0, 2])}"



# bubble_sort([4,3,78,2,0,2])
# [0,2,2,3,4,78]


#[4, 3, 78, 2, 0, 2]
#[3, 4, 78, 2, 0, 2]
#[3, 4, 78, 2, 0, 2] 
#[3, 4, 2, 78, 0, 2]
#[3, 4, 2, 0, 78, 2]
#[3, 4, 2, 0, 2, 78] 1st iteration push largest number to end

#Complete 1st iteration

#[3, 4, 2, 0, 2, 78]
#[3, 4, 2, 0, 2, 78]
#[3, 2, 4, 0, 2, 78]
#[3, 2, 0, 4, 2, 78]
#[3, 2, 0, 2, 4, 78]
#[3, 2, 0, 2, 4, 78] 2nd iteration prepends second largest number to largest number

#Complete 2nd iteration

#[3, 2, 0, 2, 4, 78]
#[2, 3, 0, 2, 4, 78]
#[2, 0, 3, 2, 4, 78]
#[2, 0, 2, 3, 4, 78]
#[2, 0, 2, 3, 4, 78]
#[2, 0, 2, 3, 4, 78] 3rd iteration prepends third largest number to 2nd largest number

#Complete 3rd iteration

#[2, 0, 2, 3, 4, 78]
#[0, 2, 2, 3, 4, 78]
#[0, 2, 2, 3, 4, 78]
#[0, 2, 2, 3, 4, 78]
#[0, 2, 2, 3, 4, 78]
#[0, 2, 2, 3, 4, 78] etc.

#Complete final iteration

#WHAT IS THE STOPPING POINT FOR FINAL ITERATION



