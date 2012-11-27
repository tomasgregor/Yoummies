class RenameNameInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :name, :fname
    rename_column :users, :surname, :lname
  end
end
