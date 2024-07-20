class CreateSignupforms < ActiveRecord::Migration[7.1]
  def change
    create_table :signupforms do |t|
      t.references :lead_magnet, null: false, foreign_key: true
      t.string :headline
      t.string :submit_button_text

      t.timestamps
    end
  end
end
