class ChangeSpotColumnsDefaultValues < ActiveRecord::Migration
  def change
    change_column :spots, :title, :string, :default => "default"
    change_column :spots, :street, :string, :default => "default"
    change_column :spots, :description, :text, :default => "default"
    change_column :spots, :price, :integer, :default => 0
    change_column :spots, :user_id, :integer, :default => 1
    change_column :spots, :style, :string, :default => "default"
    change_column :spots, :post_code, :string, :default => "00000"
    change_column :spots, :exposition, :string, :default => "default"
    change_column :spots, :exceptional_view, :boolean, :default => false
    change_column :spots, :modular_furniture, :boolean, :default => false
  end
end
