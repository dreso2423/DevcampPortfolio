class PortfoliosController < ApplicationController
  def index
    @portfolio_items=Portfolio.all#What this is doing is calling the model inside the controller
  end
  def new#ceate a new method
    @portfolio_item = Portfolio.new
  end
  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))#These are the parameters that are allowed to go trought the system

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
        format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end
end
