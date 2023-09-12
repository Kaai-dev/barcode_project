class CreateBarcodes < ActiveRecord::Migration[7.0]
  def change
    create_table :barcodes do |t|
      t.string :code
      t.string :name
      t.boolean :been_set

      t.timestamps
    end
  end
end
