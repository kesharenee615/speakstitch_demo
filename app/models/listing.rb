class Listing < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :small => "140x140>", :thumb => "64x64!>" }, :default_url => "Placeholder.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end