class PostsController < ApplicationController
  before_action :set_post, only: [ :show, :edit, :update, :destroy ]

  # 전체 목록 (Read)
  def index
    @posts = Post.all
  end

  def show
  end

  # 새 글 작성 폼(Create)
  def new
    @post = Post.new
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

  # 수정 폼(Update)
  def edit
  end


  # 수정 저장(Update)
  def update
    if @post.update(post_params)
      redirect_to @post, notice: "게시물이 성공적으로 수정되었습니다."
    else
    render :edit
    end
  end

# 삭제
def destroy
  @post.destroy
  redirect_to posts_url, notice: "게시물이 삭제되었습니다"
end
private

def set_post
   @post = Post.find(params[:id]) # id로 게시글 찾기
end

def post_params
   params.require(:post).permit(:title, :content)
end
end
