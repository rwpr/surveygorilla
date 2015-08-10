class CreateAnswers < ActiveRecord::Migration
  def change
  	create_table :answers do |t|
  		t.string :desc, uniqueness: true
  		t.integer :choice_id
  		t.integer :survey_id
  		t.integer :question_id
  		t.integer :user_id
  		
  	end
  end
end
