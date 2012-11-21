class FoodsController < ApplicationController
  
  # GET /foods
  def index
    @foods = Food.all
  end

  # GET /foods/1
  def show
    @food = Food.find(params[:id])
    @posts = @food.posts
    @prices = @food.prices
    @post = Post.new
    
    @rating_sum = 0
    @rating = 0
    @posts.each do |post|
      if post.rating
        @rating_sum = @rating_sum + post.rating
        @rating = @rating + 1
      end
    end
    @rating_avg = (@rating_sum.to_f / @rating.to_f).round(1)
  end

  # GET /foods/new
  def new
    @food = Food.new
    @food.prices.build
    @food.posts.build
  end

  # GET /foods/1/edit
  def edit
    @food = Food.find(params[:id])
  end

  # POST /foods
  def create
    @food = Food.new(params[:food])

    if @food.save
      redirect_to @food, notice: 'Food was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /foods/1
  def update
    @food = Food.find(params[:id])

    respond_to do |format|
      if @food.update_attributes(params[:food])
        redirect_to @food, notice: 'Food was successfully updated.'
      else
        render action: "edit"
      end
    end
  end

  # DELETE /foods/1
  def destroy
    @food = Food.find(params[:id])
    @food.destroy

    redirect_to foods_url
  end
end
