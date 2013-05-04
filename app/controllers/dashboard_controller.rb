class DashboardController < ApplicationController

  def index
  	@users = User.all
  	@user = User.find(params[:id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def show
    @user = User.find(params[:id])
    @post = @user.posts(:order => "created_at DESC")

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end
	
end
