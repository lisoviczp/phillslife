class AddTypeToSong < ActiveRecord::Migration
  def change
    add_column :songs, :type, :string
  end
end
