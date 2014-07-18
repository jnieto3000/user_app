class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :image_url
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
