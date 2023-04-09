class VordersController < ApplicationController
  before_action :authenticate_user!, only: :index
  before_action :params_item, only: [:index, :create]
  
  def index
    @vorder = Vorder.new
    if current_user.id == @vegetable.user_id || @vegetable.vorders.present? 
      redirect_to root_path
    end
  end
  
  def create
    @vorder = Vorder.new(vorder_params)
    if @vorder.valid?
      pay_item
      @vorder.save
      redirect_to root_path
    else
      render :index
    end
  end
  
  private
  
  def vorder_params
    params.require(:vorder).permit(:quantity, :totalprice ).merge(user_id: current_user.id, vegetable_id: params[:vegetable_id],token: params[:token])
  end
  
  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"] 
    Payjp::Charge.create( 
      amount: @vorder.totalprice,
      card: vorder_params[:token],    
      currency: 'jpy'                 
    )
  end
  
  def params_item
    @vegetable = Vegetable.find(params[:vegetable_id])
  end
end
