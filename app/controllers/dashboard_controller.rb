class DashboardController < ApplicationController
  before_action :resume_session, only: [:index]

  def index
    @agents = current_user.agents
  end
end
