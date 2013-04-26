class UsersController < ApplicationController
  def index
@users = User.all

respond_to do |format|
  format.html # index.html.erb
  format.xml  { render :xml => @users }
end


end
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  def follow
      @user = User.find(params[:id])
      current_user.toggle_follow!(params[:id])
      redirect_to root_path
  end

  def unfollow
    @user = User.find(params[:id])
    current_user.stop_following(@user)
    redirect_to root_path
  end

end