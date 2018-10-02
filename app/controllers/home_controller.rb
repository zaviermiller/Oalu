class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    if user_signed_in?
      @comments = Comment.where(user_id: current_user.id)
    end
  end
end
