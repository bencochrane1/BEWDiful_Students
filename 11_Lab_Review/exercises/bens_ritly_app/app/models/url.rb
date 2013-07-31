class Url < ActiveRecord::Base

	# before_validation :strip_whitespace, :only => [:link]
	validates :link, presence: :true
	validates :link, format: URI::regexp(%w(http https))
	# validates_uniqueness_of :hash_code # check if this works or not


	# before_save :edit_url

	# def edit_url
	# 	self.link = self.link.sub("http://", "")
	# end

	def generate_hash_code
		self.hash_code = rand(999999)
	end

	def short_link
		"http://localhost:3000/#{hash_code}"
	end

	def long_link
		"http://#{link}"
	end

end


