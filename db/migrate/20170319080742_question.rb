class Question < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text :question
      t.string :type
    end
    add_reference :questions, :survey_tools, index: true
  end
end
