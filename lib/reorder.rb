require "ReorderArray.rb"

class Array

	include ReorderArray

	def reorder(from, to)

		# flag for debug output
		debug = false
		
		# if debug show arguments passed to function
		puts "reorder(#{from}, #{to})" if debug

		if from < 0 - self.length or from > self.length - 1
			# 'from' index is out of range (indexes can be negative)
			nil
		elsif to < 0 - self.length or to > self.length - 1
			# 'to' index is out of range (indexes can be negative)
			nil
		elsif to == from
			# 'from' and 'to' indexes are the same so do nothing, return original array
			self
		else
			# save 'to' element for last iteration of loop below
			temp = self[to]
			# if debug show statement saving 'to' element 
			puts "temp = self[#{to}]" if debug

			# reorder array
			if from < to
				# 'from' index is less than 'to' index so loop over increasing values

				# loop through increasing array indexes
				(from..to).each_with_index do |index|
					if index == from
						# first iteration move 'from' element to 'to' element
						self[to] = self[from]
						# if debug show statement moving 'from' element to 'to' element
						puts "first iteration self[#{to}] = self[#{from}]" if debug
					elsif index == to
						# last iteration move saved 'to' element next to where it originated
						self[index - 1] = temp
						# if debug show statement moving saved 'to' element
						puts "last iteration self[#{index - 1}] = temp" if debug
					else
						# intermediate iterations move index element one element to the left
						self[index - 1] = self[index]
						# if debug show statement moving index element one element to the left
						puts "intermediate iteration self[#{index - 1}] = self[#{index}]" if debug
					end
				end
			else
				# 'to' index is less than 'from' index so loop over decreasing values

				# loop through decreasing array indexes
				index = from
				from.downto(to) do
					if index == from
						# first iteration move 'from' element to 'to' element
						self[to] = self[from]
						# if debug show statement moving 'from' element to 'to' element
						puts "first self[#{to}] = self[#{from}]" if debug
					elsif index == to
						# last iteration move saved 'to' element next to where it originated
						self[index + 1] = temp
						# if debug show statement moving saved 'to' element
						puts "last self[#{index + 1}] = temp" if debug
					else
						# intermediate iterations move index element one element to the right
						self[index + 1] = self[index]
						# if debug show statement moving index element one element to the right
						puts "intermediate self[#{index + 1}] = self[#{index}]" if debug
					end
					index -= 1
				end
			end
			# return reordered array
			self
		end
	end
end
