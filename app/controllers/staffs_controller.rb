class StaffsController < ApplicationController
  def index
    @staffs = Staff.where(user_id: current_user.id)
  end

  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.create(staffs_params)
    redirect_to user_staffs_path(current_user)
  end

  private
  def staffs_params
    params.require(:staff).permit(:name, :assessment, :position, :birthday).merge(user_id: current_user.id)
  end
end
