class CreateCoins < ActiveRecord::Migration[7.2]
  def change
    create_table :coins do |t|
      t.string :description, null: false, default: "Web Coin"
      t.string :acronym, null: false, default: ""
      t.string :url_image

      t.timestamps
    end

      add_index :coins, :acronym, unique: true
  end
end
