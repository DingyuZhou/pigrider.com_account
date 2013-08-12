# This migration comes from pigrider_user (originally 20130801045753)
class CreatePigriderUserUsers < ActiveRecord::Migration
  def change
    create_table :pigrider_user_users do |t|
      t.string :username, :limit=>50, :null=>false 
      t.string :password_digest, :null=>false
      t.string :authorityLevel, :limit=>50, :null=>false
      t.string :email, :limit=>300, :null=>false

      t.timestamps
    end
    
    add_index :pigrider_user_users, [:username], :unique=>true
  end
end
