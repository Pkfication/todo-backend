class AddStatusToBin < ActiveRecord::Migration[6.0]
  def change
    add_column :bins, :visibility, :integer, :default => :shared
  end
end
