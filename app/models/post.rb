class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :votes
	has_attached_file :avatar, :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200",
      :large => "1000x1000"}
	validates_attachment :avatar,
	    :presence => true,
	    :size => { :in => 0..10.megabytes },
	    :content_type => { :content_type => /^image\/(jpeg|png|gif|tiff)$/ }
end
