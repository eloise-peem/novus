class Author < ApplicationRecord
	has_many :authorships
	has_many :posts, through: :authorships
end
