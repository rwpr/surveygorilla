class CreateChoices < ActiveRecord::Migration
  def change
  	create_table :choices do |t|
  		t.string :desc, uniqueness: true
  		t.integer :question_id
  		
  	end
  end
end
