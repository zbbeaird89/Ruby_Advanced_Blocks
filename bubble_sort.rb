


=begin
def bubble_sort(array)
	i = 0
	output = array
	loop do 
		until i == output.length - 1 
			left, right = num, output[i + 1]
			puts "#{left}, #{right}"
			output.push(swap(left, right)) if swap?(left, right)
			i += 1
		end
		break if sorted? output
		i, output = 
	end

	puts "#{new_array.compact.flatten}"
end
=end

def bubble_sort(array)
	i = 0
	array.map! do |num|
		num = 1
	end
end

def swap(a, b)
	unless b == nil
		a, b = b, a
	end
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



