class CreateQuestions < ActiveRecord::Migration
  def change
  	create_table :questions do |t|
  		t.string :desc, uniqueness: true
  		t.integer :survey_id  		
  	end
  end
end
