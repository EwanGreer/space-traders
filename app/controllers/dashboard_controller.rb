class DashboardController < ApplicationController
  before_action :resume_session, only: [:index]

  def index
    @agents = current_user.agents.includes(ships: [:crew, :cargo, :fuel])
    @ships  = @agents.flat_map(&:ships)
  end
end
