class PostsController < ApplicationController
  def index
    @posts = Post.all
    # @posts.where(Post[i+1] % 5 == 0 || Post.first).update_all(title: "SPAM")
    @posts.each_with_index do |post, index|
      if index % 5 == 0
        post.title = "SPAM"
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end

  # def censor
  #   if Post[i+1]%5 == 0 || Post.first
  #     Post.update(title: "SPAM")
  #   end
  # end
end
