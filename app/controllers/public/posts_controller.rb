class Public::PostsController < ApplicationController
  
  def new
    @post = Post.new
    @post_image = @post.post_images.build 
  end
  
  def create
    @post = Post.new(post_params)
    @post.member_id = current_member.id
    @post.save
    redirect_to root_path
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  private
  
  def post_params
    params.require(:post).permit(:shop_name, :shop_name_kana, :telephone_number, :address, :cost, post_images_images: [] )
  end
  
end

