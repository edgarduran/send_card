class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :message
      t.string :image

      t.timestamps null: false
    end
  end
end
