class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :social_media_link
      t.text :avatar_url

      t.timestamps
    end
  end
end
