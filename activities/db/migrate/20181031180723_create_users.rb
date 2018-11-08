class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :tite
      t.text :text

      t.timestamps
    end
  end
end
