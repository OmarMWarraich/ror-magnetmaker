class CreateLeadMagnets < ActiveRecord::Migration[7.1]
  def change
    create_table :lead_magnets do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :ai_template
      t.text :prompt

      t.timestamps
    end
  end
end
