class PortfoliosController < ApplicationController
  def index
    @portfolio_items=Portfolio.all#What this is doing is calling the model inside the controller
  end
end
