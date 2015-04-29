class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :votes
	has_attached_file :avatar, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment :avatar,
	    :presence => true,
	    :size => { :in => 0..10.megabytes },
	    :content_type => { :content_type => /^image\/(jpeg|png|gif|tiff)$/ }
end
