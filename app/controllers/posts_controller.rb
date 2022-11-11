class PostsController < ApplicationController

   def new
		@post = Post.new
  
    private
    	def post_params
      	params.require(:post).permit(:author, :body, :publised)
    	end
  	end
    

