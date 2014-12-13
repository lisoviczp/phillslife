class AddApprovedToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :approved, :boolean
  end
end
