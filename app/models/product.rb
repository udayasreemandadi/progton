class Product < ApplicationRecord
	include BarCodeConcern
	scope :scanned_items, -> { where(scanned: true) }
	validates :name, presence: true,uniqueness: true
end
