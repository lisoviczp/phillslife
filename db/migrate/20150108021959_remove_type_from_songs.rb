class RemoveTypeFromSongs < ActiveRecord::Migration
	def self.up
		remove_column :songs, :type
	end

	def self.down
		remove_column :songs, :type
	end
end

