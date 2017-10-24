class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.timestamps
      t.string :name
      t.string :lat
      t.text :lng
      t.text :img
    end
  end
end
