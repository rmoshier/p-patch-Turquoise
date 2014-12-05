class CreateUserstools < ActiveRecord::Migration
  def change
    create_table :userstools do |t|
      t.integer :user_id
      t.integer :tool_id

      t.timestamps
    end
  end
end
