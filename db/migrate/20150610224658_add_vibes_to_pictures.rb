class AddVibesToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :vibeType, :string
    add_column :pictures, :body, :text
    add_column :pictures, :url, :string
    add_column :pictures, :uid, :string
  end
end
