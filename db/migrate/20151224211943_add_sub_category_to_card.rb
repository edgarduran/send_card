class AddSubCategoryToCard < ActiveRecord::Migration
  def change
    add_column :cards, :sub_category, :string
  end
end
