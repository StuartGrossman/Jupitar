class Addreferencetothings < ActiveRecord::Migration
  def change
  	add_column :things, :user_id, :integer, references: :users
  end
end
