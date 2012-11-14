class Array
	def reorder(origin, destination)
		if origin < 0 or origin > self.length - 1
			# origin is before the first or after the last array element
			raise "Origin is out of range."
		elsif destination < 0 or destination > self.length - 1
			# destination is before the first or after the last array element
			raise "Destination is out of range."
		elsif destination = origin
			# origin and destination are the same so do nothing
			self
		else
			# move origin to destination and move other elements accordingly
			temp = self[destination]
			self[destination] = self[origin]

			self
		end
	end
end
