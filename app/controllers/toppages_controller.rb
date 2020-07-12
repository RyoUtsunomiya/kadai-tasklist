class ToppagesController < ApplicationController
  def index
    if logged_in?
      @tasklist = current_user.tasklist.build  # form_with 用
      @tasklists = current_user.tasklist.order(id: :desc).page(params[:page])
    end
  end
end