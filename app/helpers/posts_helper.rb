module PostsHelper
	
	def tag_links(tags)
  		tags.split(",").map{|tag| link_to tag.strip, tag_path(tag.strip) }.join(", ") 
	end

	def author_links(authors)
  		authors.split(",").map{|author| link_to author.strip, author_path(author.strip) }.join(", ") 
	end
end
