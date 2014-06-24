class Post::CategoriesController < ApplicationController
  # GET /post/categories
  # GET /post/categories.json
  def index
    @post_categories = Post::Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @post_categories }
    end
  end

  # GET /post/categories/1
  # GET /post/categories/1.json
  def show
    @post_category = Post::Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post_category }
    end
  end

  # GET /post/categories/new
  # GET /post/categories/new.json
  def new
    @post_category = Post::Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post_category }
    end
  end

  # GET /post/categories/1/edit
  def edit
    @post_category = Post::Category.find(params[:id])
  end

  # POST /post/categories
  # POST /post/categories.json
  def create
    @post_category = Post::Category.new(params[:post_category])

    respond_to do |format|
      if @post_category.save
        format.html { redirect_to @post_category, notice: 'Category was successfully created.' }
        format.json { render json: @post_category, status: :created, location: @post_category }
      else
        format.html { render action: "new" }
        format.json { render json: @post_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /post/categories/1
  # PUT /post/categories/1.json
  def update
    @post_category = Post::Category.find(params[:id])

    respond_to do |format|
      if @post_category.update_attributes(params[:post_category])
        format.html { redirect_to @post_category, notice: 'Category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post/categories/1
  # DELETE /post/categories/1.json
  def destroy
    @post_category = Post::Category.find(params[:id])
    @post_category.destroy

    respond_to do |format|
      format.html { redirect_to post_categories_url }
      format.json { head :no_content }
    end
  end
end
