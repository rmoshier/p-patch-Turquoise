class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :type
      t.boolean :status
      t.string :photo_url

      t.timestamps
    end
  end
end
