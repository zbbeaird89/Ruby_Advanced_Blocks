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

def bubble_sort_by(array)
	output = array
	until sorted? output
		output.each_with_index do |num, i|
			left, right = output[i], output[i + 1]
			unless right == nil
				value = yield left, right
				if value > 0
					output[i] = right
					output[i + 1] = left
				end
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
		if a.is_a?(Fixnum) && b.is_a?(Fixnum) && !b.nil?
			a <= b
		elsif a.is_a?(String) && b.is_a?(String) && !b.nil?
			a.length <= b.length
		end
	end
end

bubble_sort([4, 3, 78, 2, 0, 2])

bubble_sort_by(["hi", "hello", "hiya", "hey"]) do |left, right|  
	left.length - right.length
end
