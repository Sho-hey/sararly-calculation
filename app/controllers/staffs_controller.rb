class StaffsController < ApplicationController
  def index
    @staffs = current_user.staffs
  end

  def new
    @staff = Staff.new
  end

  private
  def staffs_params
    params.permit(:name, :assessment, :position, :birthday).merge(user_id: current_user.id)
  end
end
