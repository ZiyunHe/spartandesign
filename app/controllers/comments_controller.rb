class CommentsController < ApplicationController
	before_action :find_post
	before_action :find_comment, only: [:destroy, :edit, :update, :comment_owner, :upvote, :downvote]
	#before_action :comment_owner, only: [:destroy, :edit, :update, :upvote, :downvote]

	def create
		@comment = @post.comments.create(comment_params)
		@comment.user_id = current_user.id
		@comment.save

		#if @comment.save
			redirect_to post_path(@post)
		#else
		#	render 'new'
		#end
	end

	def destroy
		@comment.destroy
		redirect_to post_path(@post)
	end

	def edit

	end

	def update
		#if @comment.update(params[:comment].permit(:content))
		if @comment.update(comment_params)
			redirect_to post_path(@post)
		else
			render 'edit'
		end
	end

	def upvote
		@comment.upvote_by(current_user)
		redirect_to post_path(@post)
	end

	def downvote
		@comment.downvote_by(current_user)
		redirect_to post_path(@post)
	end

	private 

	def comment_params
      params.require(:comment).permit(:content, :picture)
    end

	#get post id
	def  find_post
		@post = Post.find(params[:post_id])
	end

	def find_comment
		@comment = @post.comments.find(params[:id])
	end

#	def comment_owner
#		unless current_user.id == @comment.user_id
#			flash[:notice] = "Not authorized to edit"
#			redirect_to @post
#		end
#	end

end
