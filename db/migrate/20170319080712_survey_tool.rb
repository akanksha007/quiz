class SurveyTool < ActiveRecord::Migration[5.0]
  def change
    create_table :survey_tools do |t|
      t.string :name
    end
    add_reference :survey_tools, :users, index:true
  end
end
