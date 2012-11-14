class Array
	def reorder(origin, destination)
		temp = self[destination]
		self[destination] = self[origin]
		self[origin] = temp
		self
	end
end
