class PostsController < ApplicationController
  
# from Railscast http://railscasts.com/episodes/154-polymorphic-association-revised?view=asciicast
# before_filter & create method functions only if routes are not changed (URL path /food/23 etc)
  before_filter :load_postable, :except => :index
  
    def load_postable
      klass = [Food, Shop].detect { |c| params["#{c.name.underscore}_id"]}
      @postable = klass.find(params["#{klass.name.underscore}_id"])
    end
  
  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  def create
    @post = @postable.posts.new(params[:post])
    if @post.save
      redirect_to @postable, notice: 'Post was successfully created.'
    else
      render action: @post.food, notice: 'Post was not created.'
    end
  end

  # PUT /posts/1
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        redirect_to @post, notice: 'Post was successfully updated.'
      else
        render action: "edit"
      end
    end
  end

  # DELETE /posts/1
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_url
  end

end
