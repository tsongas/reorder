class Array
	def reorder(from, to)
puts "reorder(#{from}, #{to})"
		if from < 0 - self.length or from > self.length - 1
			# from index is out of range (indexes can be negative)
			nil
		elsif to < 0 - self.length or to > self.length - 1
			# to index is out of range (indexes can be negative)
			nil
		elsif to == from
			# from and to are the same so do nothing
			self
		else
			# reorder array
			if from < to

puts "temp = self[#{to}]"
				temp = self[to]
#puts "temp: #{temp}"

				index = from

#puts "(#{from}..#{target}) do |index|"
				(from..to).each do
#puts "index: #{index}"

					if index == from
						# first iteration
puts "first self[#{to}] = self[#{from}]"
						self[to] = self[from]

					elsif index == to
						# last iteration
puts "self[#{index - 1}] = temp"
						self[index - 1] = temp

					else
						# intermediate iterations
puts "subsequent self[#{index - 1}] = self[#{index}]"
						self[index - 1] = self[index]

					end

					index += 1
#puts "self: #{self}"

				end

			else

puts "temp = self[#{to}]"
				temp = self[to]
#puts "temp: #{temp}"

				index = from

#puts "(#{from}..#{target}) do |index|"
				(from..to).each do
#puts "index: #{index}"

					if index == from
						# first iteration
puts "first self[#{to}] = self[#{from}]"
						self[to] = self[from]

					elsif index == to
						# last iteration
puts "self[#{index - 1}] = temp"
						self[index - 1] = temp

					else
						# intermediate iterations
puts "subsequent self[#{index - 1}] = self[#{index}]"
						self[index - 1] = self[index]

					end

					index += 1
#puts "self: #{self}"


			end
			self
		end
	end
end
