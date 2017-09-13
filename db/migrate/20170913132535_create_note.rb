class CreateNote < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.integer :value
      t.belongs_to :user, index: true
      t.belongs_to :video, index: true
    end
  end
end
