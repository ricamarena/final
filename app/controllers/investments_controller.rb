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
      @newcash = (@user.cashavailable) - (params["investment"]["amount"].to_f)
   	  @user.update_attribute(:cashavailable, @newcash)

      @newinvestment = (@user.cashinvested) + (params["investment"]["amount"].to_f)
   	  @user.update_attribute(:cashinvested, @newinvestment)

   	  @project = Project.find_by(id: params["investment"]["project_id"])
   	  @newraised = (@project.raised) + (params["investment"]["amount"].to_f)
   	  @project.update_attribute(:raised, @newraised)

	  redirect_to projects_url , notice: "Investment Successful"
    else
      render "new"
    end

  end

end
