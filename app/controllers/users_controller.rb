class UsersController < ApplicationController
  respond_to :html
  before_filter :hide_filters!, only: [:show]

  def show
    @user = User.find(params[:id])
    authorize! :read, @user
    @photographs = @user.photographs.view_for(current_user).order("created_at DESC").page(params[:page])
    respond_with @user
  end
end