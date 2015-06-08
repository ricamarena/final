class InvestmentsController < ApplicationController
  
  def new
    @user = current_user
    @investment = Investment.new
  end

  def create
    @user = current_user
    @investment = Investment.new(params["investment"])
    @investment.user = @user
    if @investment.save
   	  @user.cashinvested = (@user.cashinvested) + (params["investment"]["amount"].to_f)
   	  @user.cashavailable = (@user.cashavailable) - (params["investment"]["amount"].to_f)
   	  @user.save
      redirect_to projects_url
    else
      render "new"
    end

  end

end
