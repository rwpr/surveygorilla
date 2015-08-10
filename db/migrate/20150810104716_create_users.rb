class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :username, uniqueness: true
  		t.string :password

  		t.timestamps null: false  		
  	end
  end
end
