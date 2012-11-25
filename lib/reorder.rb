class Array
	def reorder(source, destination)
		if source < 0 - self.length or source > self.length - 1
			# source index is out of range (indexes can be negative)
			nil
		elsif destination < 0 - self.length or destination > self.length - 1
			# destination index is out of range (indexes can be negative)
			nil
		elsif destination = source
			# source and destination are the same so do nothing
			self

# if source next to destination, swap and return


		else
			# move source to destination and move other elements accordingly
			temp = self[destination]
			self[destination] = self[source]

			self
		end
	end
end

		# translate any negative indexes to positive values
