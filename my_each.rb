module Enumerable
	def my_each
		i = 0
		while i < self.length
			yield self[i]
			i += 1
		end
		self
	end  

	def my_each_with_index
		i = 0
		while i < self.length
			yield self[i], i
			i += 1
		end
		self
	end  

	def my_select
		i = 0
		array = []
		while i < self.length
			block = yield self[i]
			array << self[i] if block
			i += 1
		end
		array
	end

	def my_all?
		i = 0
		failed = nil
		while i < self.length
			block = yield self[i]
			failed = true unless block
			i += 1
		end
		failed ? false : true
	end

	def my_any?
		i = 0
		found = nil
		while i < self.length
			block = yield self[i]
			if block
				found = true
				break
			end
			i += 1
		end
		found ? true : false
	end

	def my_none?
		i = 0 
		found = nil
		while i < self.length
			block = yield self[i]
			if block
				found = true
				break
			end
			i += 1
		end
		found ? false : true
	end

	def my_count
		i = 0
		counter = 0
		while i < self.length
			block = yield self[i]
			counter += 1 if block
			i += 1
		end
		counter
	end

	def my_map(&some_proc)
		i = 0
		array = []
		while i < self.length
			proc = some_proc.call(self[i])		
			if (proc && block_given?) || proc
				array << proc
			elsif block_given? 
				block = yield self[i]
				array << block
			end 
			i += 1 
		end
		array
	end

	def my_inject
		i = 1
		total = self[0]
		while i < self.length
			block = yield total, self[i]
			total = block
			i += 1
		end
		total
	end
end

def multiply_els(array)
	array.my_inject { |total, num| total * num }
end

my_proc = Proc.new { |el| el ** 2 }


[1, 2, 5, 3, 4].my_each { |num| puts num }
[10, 12, 45, 56, 100].my_each_with_index { |num, i| puts "Number: #{num}, Index: #{i}." }
puts [1, 2, 3, 4, 5, 6].my_select { |num| num % 2 == 0}
puts ["Zach", "Lauren", 4, "Skylie"].my_all? { |el| el.is_a? String }
puts ["Zach", "Lauren", "Isaac", "Skylie"].my_any? { |el| el.is_a? Fixnum }
puts ["Zach", "Lauren", "Isaac", "Skylie"].my_none? { |el| el.is_a? Fixnum }
puts [1, 2, 3, 4, 5, 6].my_count { |num| num % 2 == 0}
puts [1, 2, 3, 4, 5, 6].my_inject { |sum, num| sum + num }
puts multiply_els([5, 6, 7, 8, 9])
puts [1, 2, 3, 4, 5, 6].my_map(&my_proc) { |num| num ** 2 }
