class Admin::UserSessionsController < AdminController
  before_filter :require_no_user, :only => [:show, :new, :create]
  before_filter :require_user, :only => :destroy

  def show
    redirect_to admin_path
  end

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Login successful!"
      redirect_back_or_default admin_account_url
    else
      render :action => :new
    end
  end

  def destroy
    current_user_session.destroy
    flash[:notice] = "Logout successful!"
    redirect_back_or_default new_admin_user_session_url
  end
end
