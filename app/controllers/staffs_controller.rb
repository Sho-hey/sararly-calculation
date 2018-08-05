class StaffsController < ApplicationController
  def index
    @staff = Staff.new
  end

  def create
  end

  private
  def set_staff
    @staff = Staff.find(params[])
  end
end
