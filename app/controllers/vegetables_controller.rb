class VegetablesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :set_vegetable, only: [:show, :edit, :update]

  def new
    @vegetable = Vegetable.new
  end

  def create
    @vegetable = Vegetable.new(vegetable_params)
    if @vegetable.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    if current_user.id != @vegetable.user_id || @vegetable.order.present? 
      redirect_to root_path
    end
  end

  def update
    if @vegetable.update(vegetable_params)
      redirect_to item_path
    else
      render :edit
    end
  end

  def destroy
    vegetable = Vegetable.find(params[:id])
    if user_signed_in? && current_user.id == vegetable.user_id
      vegetable.destroy
      redirect_to root_path
    end
  end

  private

  def vegetable_params
    params.require(:vegetable).permit(:image, :vegetable, :text, :price, :quantity, :place_id).merge(user_id: current_user.id)
  end

  def set_vegetable
    @vegetable = Vegetable.find(params[:id])
  end
end
