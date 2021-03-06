class HomeController < ApplicationController
  before_action :authenticate_user!, except: :index

  def search
    @products = Product.where("p_name LIKE :query", query: "%#{params[:find]}%")
    
  end

  def index
     @products = Product.paginate(:page => params[:page], :per_page => 10)
  end

  def purchases
  end

  def history
  end

  def favorites
    @favorites = current_user.favorites
  end
  def car
    
  end
  
end
