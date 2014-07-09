# -*- encoding : utf-8 -*-
class Admin::BaseController < ApplicationController
  before_filter :authenticate_user!

  def current_client
    current_user.client
  end

  helper_method :current_client

  def dashboard
    if current_user.boss?
      render "boss_dashboard"
    end
  end

  def configuration
    if current_user.boss?
      @users = User.all
      render "boss_configuration"
    end
  end
end
