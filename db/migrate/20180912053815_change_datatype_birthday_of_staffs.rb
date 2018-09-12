class ChangeDatatypeBirthdayOfStaffs < ActiveRecord::Migration[5.1]
  def change
    change_column :staffs, :birthday, :date
  end
end
