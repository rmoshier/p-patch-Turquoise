class AddToolNameToUserstool < ActiveRecord::Migration
  def change
    add_column :userstools, :name, :string
  end
end
