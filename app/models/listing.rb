class Listing < ActiveRecord::Base

	#has_attached_file :image, :styles => { :medium => "200x", :thumb => "10x10>" }, :default_url => "default.png"
	#validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	#validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  	#do_not_validate_attachment_file_type :image
  	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] } 
end
