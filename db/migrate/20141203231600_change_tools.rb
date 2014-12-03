class ChangeTools < ActiveRecord::Migration
  def change
    remove_column :tools, :status
    remove_column :tools, :type
    add_column :tools, :quantity, :integer
    add_column :tools, :name, :string
    add_column :tools, :in_stock, :integer
  end
end
