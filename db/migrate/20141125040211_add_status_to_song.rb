class AddStatusToSong < ActiveRecord::Migration
  def change
    add_column :songs, :status, :string
  end
end
