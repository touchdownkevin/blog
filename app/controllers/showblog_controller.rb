class ShowblogController < ApplicationController
	def index
		@posts=Post.all
	end
end
