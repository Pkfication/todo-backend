class CreateBins < ActiveRecord::Migration[6.0]
  def change
    create_table :bins do |t|
      t.string :key
      t.string :text
      t.string :created_by

      t.timestamps
    end
  end
end
