class PricesController < ApplicationController
  # GET /posts
  def index
    @prices = Price.all
  end



  # GET /posts/1/edit
  def edit
    @price = Price.find(params[:id])
  end

  # POST /posts
  def create
    @price = Price.new(params[:post])
    if @price.save
      redirect_to @price.food, notice: 'Price was successfully created.'
    else
      render action: @price.food, notice: 'Price was not created.'
    end
  end

  # PUT /posts/1
  def update
    @post = Price.find(params[:id])

    respond_to do |format|
      if @price.update_attributes(params[:post])
        redirect_to @price, notice: 'Price was successfully updated.'
      else
        render action: "edit"
      end
    end
  end

  # DELETE /posts/1
  def destroy
    @post = Price.find(params[:id])
    @post.destroy

    redirect_to prices_url
  end
end