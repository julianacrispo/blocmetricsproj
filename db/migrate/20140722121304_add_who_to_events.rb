class AddWhoToEvents < ActiveRecord::Migration
  def change
    add_column :events, :who, :string
    add_column :events, :what, :string
    add_column :events, :where, :string
  end
end
