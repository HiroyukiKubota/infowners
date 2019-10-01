class PostsController < ApplicationController
  def index
    @posts=Post.all
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def new
    @post = Post.new
  end

  def create
    @post =Post.new(
      title: params[:title],
      city: params[:city],
      suburb: params[:suburb],
      roomtype: params[:roomtype],
      rent: params[:rent],
      utility: params[:utility],
      wifi: params[:wifi],
      bond: params[:bond],
      gender: params[:gender],
      okimiyage: params[:okimiyage],
      minimum_stay: params[:minimum_stay],
      move_in_date: params[:move_in_date],
      sharemate_male: params[:sharemate_male],
      sharemate_female: params[:sharemate_female],
      smoking: params[:smoking],
      couple: params[:couple],
      description: params[:description],
      price: params[:price],
      image: params[:image]
      )
      @post.save
    redirect_to("/posts/post_done")
  end
  
  def post_done
  end
  
end
  

