class PostsController < ApplicationController
  before_action :set_post, only: [ :show, :edit, :update, :destroy ]
  # 새 글 작성 폼(Create)
  def new
    @post = Post.new
  end

  def index
     @posts = Post.all
  end

  # 글 저장 (Create)
  def create
     @post = Post.new(post_params)
     if @post.save
        redirect_to @post, notice: "게시물이 성공적으로 생성되었습니다"
     else
      render :new
     end
  end



  def show
    # @post = Post.find(params[:id])
  end
  def edit
    # @post는 before_action :set_post로 가져옴
  end

  def update
  if @post.update(post_params)
    redirect_to @post, notice: "게시글이 수정되었습니다."
  else
    render :edit
  end
  end

def destroy
  @post.destroy
  redirect_to posts_path, notice: "게시글이 삭제되었습니다."
end


private

def set_post
    @post = Post.find(params[:id])
end

def post_params
   params.require(:post).permit(:title, :content)
end
end
