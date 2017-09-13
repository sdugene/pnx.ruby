class AddPinned < ActiveRecord::Migration[5.1]
  def change
    create_table :pinneds do |t|
      t.belongs_to :user, index: true
      t.belongs_to :video, index: true
    end
  end
end
