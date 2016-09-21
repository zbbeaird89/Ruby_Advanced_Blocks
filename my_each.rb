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
