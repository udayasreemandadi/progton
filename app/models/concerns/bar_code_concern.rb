require 'active_support/concern'
require 'barby'
require 'barby/barcode/code_128'
require 'barby/outputter/ascii_outputter'
module BarCodeConcern
	extend ActiveSupport::Concern
	included do

		# Callback to generate barcode
		after_create :generate_bar_code

		def generate_bar_code
			begin
			barcode = Barby::Code128B.new('#{self.name}')
			self.update(barcode: barcode.to_ascii)
			rescue
				retry
			end
		end
	end
end