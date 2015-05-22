class OwnersController < ApplicationController

  def index
    @owners=Owner.all
  end

  def show
  	@owners=Owner.all
	  @owner=Owner.find_by(id: params["id"]) 
  end

  def destroy
  	Owner.delete(params["id"])
  	redirect_to owners_url
  end

  def edit
	  @owner=Owner.find_by(id: params["id"]) 
  end

  def update
  	Owner.update(params["id"], name: params["owner"]["name"], summary: params["owner"]["summary"],rating: params["owner"]["rating"])
    redirect_to owners_url
  end

  def new
    @owner = Owner.new
  end

  def create
    Owner.create(params["owner"])
    redirect_to owners_url
  end

end
