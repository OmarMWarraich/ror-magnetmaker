class CreateContents < ActiveRecord::Migration[7.1]
  def change
    create_table :contents do |t|
      t.references :lead_magnet, null: false, foreign_key: true
      t.json :content

      t.timestamps
    end
  end
end
