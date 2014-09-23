class Product < ActiveRecord::Base
	validates :title, :description, :image_url, presence: true
<<<<<<< HEAD
	validates :price, numericality: { greater_than_or_equal_to: 0.01 }
	validates :title, uniqueness: true, length: { in: 10..30 }
=======
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
>>>>>>> adf4e449e035afb60d0bbbe409ee24eb16371a6b
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)$}i, multiline: true,
		message: ' must be with jpg, png, or gif format.'
	}
end

