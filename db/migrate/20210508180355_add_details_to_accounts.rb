class AddDetailsToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :first_name, :string, :limit => 20 #By default SQL String limit 255 character 
    #Ex:- :limit => 40
    add_column :accounts, :last_name, :string, :limit => 20 #By default SQL String limit 255 character 
    #Ex:- :limit => 40
    add_column :accounts, :username, :string, :limit => 20 #By default SQL String limit 255 character 
    #Ex:- :limit => 40
  end
end
