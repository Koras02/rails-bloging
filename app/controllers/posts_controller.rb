class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    # @post = Post.find(params[:id])
    @post = Post.new(title: "테스트", body: "본문 내용, 한글 표시 확인")
    @post_title = "테스트 글"
    @post_body = "본문 내용, 한글 표시 확인"
  end
end
