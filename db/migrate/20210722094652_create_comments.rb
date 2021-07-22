class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :date
      t.text :comment
      t.string :name
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
