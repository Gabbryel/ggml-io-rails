class PostsController < ApplicationController
  before_action :set_post, only: [ :show, :edit, :update, :destroy ]
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(posts_params)
    respond_to do |format|
      if @post.save
        format.turbo_stream { redirect_to admin_posts_path, notice: "Post was successfully created." }
        format.html { redirect_to posts_path, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def index
    @posts = Post.all
    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end

  def edit
  end

  def update
    @post.update(posts_params)
    if @post.save!
      respond_to do |format|
        format.turbo_stream { redirect_to admin_posts_path, notice: "Post was successfully updated." }
        format.html { redirect_to posts_path, notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      end
    else
      respond_to do |format|
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private

  def posts_params
    params.require(:post).permit(:title, :content, :photo, :video)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
