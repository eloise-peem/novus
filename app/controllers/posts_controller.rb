class PostsController < ApplicationController

#before_action :authenticate_user!

  def thesis
  	@post = Post.new
  end

  def conference
    @post = Post.new
  end

  def paper
    @post = Post.new
  end

  def poster
    @post = Post.new
  end

  def magazine
    @post = Post.new
  end

  def journal
    @post = Post.new
  end

  def scholarly_book
    @post = Post.new
  end

  def edited_book
    @post = Post.new
  end

  def chap_in_edited_book
    @post = Post.new
  end

  def newspaper
    @post = Post.new
  end

  def broadcast
    @post = Post.new
  end
  
  def computer_science
    @post = Post.new
  end

  def artwork
    @post = Post.new
  end

  def music
    @post = Post.new
  end

  def blog
    @post = Post.new
  end

  def create
	  @post = current_user.posts.new(post_params)

    if @post.save
       redirect_to root_url
    end
  end

  def submission_type
      render :file => 'posts/submission_type.html.erb'
  end

  def edit
      @post = Post.find(params[:id])
  end
  
   def update
     @post = Post.find(params[:id])

    if @post.update_attributes(post_params)
      redirect_to root_url
    else
      render 'edit'
    end
   end

  def index

      if params[:author]
        @posts = Post.tagged_with(params[:author])
      elsif params[:tag]
        @posts = Post.tagged_with(params[:tag])
      else
        @posts = Post.all.order(created_at: :desc)
      end
  
  end

  def delete
    @post = Post.find(params[:id])
	  @post.destroy()

    redirect_to root_url
  end

   def show
		if current_user.present? 
			@post = Post.find(params[:id]) or not_found
		else
			redirect_to root_url
		end
  end

  private
  
  def post_params
    params.require(:post).permit(:search,:media, :all_tags, :title, :paper_type, :author_fname, :author_mname, :author_lname, :all_authors,:subtitle, :url, :institution, :location, :publisher, :date_of_presentation, :date_of_issue, :volume, :issue, :page, :year_of_publication, :editor, :privacy,:abstract, :short_paper, :full_paper)
  end

end