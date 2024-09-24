class CatsController < ApplicationController
  def index 
    @cats = Cat.all
    render :index 
  end

  def show 
    @cat = Cat.find_by(id: params[:id])
    render :show
  end

  def update 
    @cat = Cat.find_by(id: params[:id])
    @cat.update( 
      name: params[:name] || @cat.name,
      age: params[:age] || @cat.age,
      color: params[:color] || @cat.color,
      image: params[:image] || @cat.image
    )
  end 

  def create 
    @cat = Cat.new(
      name: params[:name], 
      age: params[:age], 
      color: params[:color],
      image: params[image]
    )
    @cat.save 
    render json: { message: 'Cat post has been created.'}
  end 

  def destroy 
    @cat = Cat.find_by(id: params[:id])
    @cat.destroy
    render json: { message: "Cat post has been deleted"}
  end 
end
