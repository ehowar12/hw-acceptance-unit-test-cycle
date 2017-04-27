class AddDirectorToTable < ActiveRecord::Migration
  def change
    add_column :tables, :director, :string
  end
end
