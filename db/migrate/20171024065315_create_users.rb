class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.timestamps
      t.string :name
      t.string :facebook_id
      t.text :details
    end
  end
end
