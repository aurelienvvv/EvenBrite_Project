class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :description
      t.string :first_name
      t.string :last_name
    end
  end
end