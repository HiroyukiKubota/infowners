class PostsController < ApplicationController
  def index
    @posts=Post.all
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def new_temporary
    @post = Post.new
  end

  def create
    @post =Post.new(post_params)
      # title: params[:title],
      # city: params[:city],
      # suburb: params[:suburb],
      # roomtype: params[:roomtype],
      # rent: params[:rent],
      # utility: params[:utility],
      # wifi: params[:wifi],
      # bond: params[:bond],
      # gender: params[:gender],
      # okimiyage: params[:okimiyage],
      # minimum_stay: params[:minimum_stay],
      # move_in_date: params[:move_in_date],
      # sharemate_male: params[:sharemate_male],
      # sharemate_female: params[:sharemate_female],
      # smoking: params[:smoking],
      # couple: params[:couple],
      # description: params[:description],
      # price: params[:price],
      # )
      # File.binwrite("public/user_images/#{@post.image_ name}.jpg", image.read)
      @post.save
    redirect_to("/posts/post_done")
  end
  
  def post_done
  end
  
  private
    def post_params
      params.require(:post).permit(:title, :city, :suburb, :roomtype, :rent, :utility, :wifi, :bond, :gender, :okimiyage, :minimum_stay, :move_in_date, :sharemate_male, :sharemate_female, :smoking, :couple, :description, :price, :image)
    end
  
end
  

