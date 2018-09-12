class CalculationsController < ApplicationController
  def index
    @staffs = Staff.where(user_id: current_user.id)
    @chanpagne = Chanpagne.where(user_id: current_user.id)
  end
end
