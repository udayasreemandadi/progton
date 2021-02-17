class RenameColumnNameScannedItemsToScanned < ActiveRecord::Migration[6.0]
  def change
  	rename_column :products,:scanned_items,:scanned
  end
end
