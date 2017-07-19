class Article < ActiveRecord::Base
	def get_comments
		comments = Comment.all(id: self.id)
	end
end
