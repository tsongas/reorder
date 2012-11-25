class Array
	def reorder(source, destination)

# Valid indices fall between -n and n-1, where n is the length of the array.



		# translate any negative indexes to positive values

# a.fetch(4)   #=> IndexError: index 4 outside of array bounds: -2...2

		# validate non-negative values then re-order elements
		if source < 0 or source > self.length - 1
			# source is before the first or after the last array element
			return nil
		elsif destination < 0 or destination > self.length - 1
			# destination is before the first or after the last array element
			return nil
		elsif destination = source
			# source and destination are the same so do nothing
			self
		else
			# move source to destination and move other elements accordingly
			temp = self[destination]
			self[destination] = self[source]

			self
		end
	end
end
