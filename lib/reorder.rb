class Array
	def reorder(from, to)
		debug = false
		puts "reorder(#{from}, #{to})" if debug

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

				puts "temp = self[#{to}]" if debug
				temp = self[to]

				index = from

				(from..to).each do

					if index == from
						# first iteration
						puts "first self[#{to}] = self[#{from}]" if debug
						self[to] = self[from]

					elsif index == to
						# last iteration
						puts "last self[#{index - 1}] = temp" if debug
						self[index - 1] = temp

					else
						# intermediate iterations
						puts "intermediate self[#{index - 1}] = self[#{index}]" if debug
						self[index - 1] = self[index]

					end

					index += 1

				end

			else

				puts "temp = self[#{to}]" if debug
				temp = self[to]

				index = from

				from.downto(to) do

					if index == from
						# first iteration
						puts "first self[#{to}] = self[#{from}]" if debug
						self[to] = self[from]

					elsif index == to
						# last iteration
						puts "last self[#{index + 1}] = temp" if debug
						self[index + 1] = temp

					else
						# intermediate iterations
						puts "intermediate self[#{index + 1}] = self[#{index}]" if debug
						self[index + 1] = self[index]

					end

					index -= 1

				end

			end
			self
		end
	end
end
