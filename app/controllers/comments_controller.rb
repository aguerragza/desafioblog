class CommentsController < ApplicationController
  def create
  	
  	@post = Post.find[:post_id]
  	@comment =@post.comment.build(comments_params)
  	@comment.save
  	if @coment.save
  		rederect_to @post notice:"posted"
  	else
  		  		rederect_to @post alert:"bot posted"

  end

  private
  def comments_params
  	params.require(:comment).permit(:comment)
end
