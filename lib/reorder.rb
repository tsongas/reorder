class Array
	def reorder(from, to)
		if from < 0 - self.length or from > self.length - 1
			# from index is out of range (indexes can be negative)
			nil
		elsif to < 0 - self.length or to > self.length - 1
			# to index is out of range (indexes can be negative)
			nil
		elsif to = from
			# from and to are the same so do nothing
			self
		else
			# reorder array
			(to..from).each do |index|
				temp = self.index
				if index = to
					self.index = self.from
				else
					self.index = temp
				end
			end
		end
	end
end
