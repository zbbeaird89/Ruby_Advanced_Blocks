class Array
	def sorted?
		each_cons(2).all? { |a, b| (a <=> b) <= 0 }
	end
end

def bubble_sort(array)
	sorting = true
	i = 0

	while sorting 
		until i == array.length
			swap(array[i], array[i].next)
			i += 1
		end
		break if array.sorted?
		i = 0
	end

	array
end

def swap(left, right)
	left, right = right, left if left > right
end



puts bubble_sort([4, 3, 78, 2, 0, 2])

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



