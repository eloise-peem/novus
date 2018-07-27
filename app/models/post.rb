class Post < ApplicationRecord
	belongs_to :user

	has_many :taggings, dependent: :destroy
	has_many :tags, through: :taggings, dependent: :destroy

	has_many :authorships, dependent: :destroy
	has_many :authors, through: :authorships, dependent: :destroy
	
	mount_uploader :abstract, FileUploader
	mount_uploader :short_paper, FileUploader
	mount_uploader :full_paper, FileUploader
	mount_uploader :media, MediaUploader

	def all_authors=(names)
		self.authors = names.split(", ").map do |name|
      		Author.where(name: name.strip).first_or_create!
  		end
	end

	def all_authors
 		self.authors.map(&:name).join(", ")
	end

	def all_tags=(names)
  		self.tags = names.split(",").map do |name|
      		Tag.where(name: name.strip).first_or_create!
  		end
	end

	def all_tags
 		self.tags.map(&:name).join(", ")
	end

	def self.tagged_with(name)
  		Tag.find_by_name!(name).posts
	end

end
