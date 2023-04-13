class DrawsController < ApplicationController

  def index
    @draws = Draw.all
  end

  def show
    @draw = Draw.find(params[:id])
    @drawing_comment = DrawingComment.new
  end

  def new
    @draw = Draw.new
  end

  # def create
  #   @draw = Draw.new(draw_params)
  #   @draw.user = current_user
  #   if @draw.save
  #     redirect_to draw_path(@draw)
  #   else
  #     render :new
  #   end
  # end

  # def edit
  #   @draw = Draw.find(params[:id])
  # end

  # def update
  #   @draw = Draw.find(params[:id])
  #   @draw.update(draw_params)
  #   redirect_to draw_path(@draw)
  # end

  # def destroy
  #   @draw = Draw.find(params[:id])
  #   @draw.destroy
  #   redirect_to draws_path
  # end

  def shop
    @draws = Draw.all
  end

  private

  def draw_params
    params.require(:draw).permit(:title, :description, :price, :photo)
  end


end
