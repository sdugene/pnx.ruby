class CreateVideo < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :url
      t.integer :view
      t.integer :note
    end
  end
end
