class Picture < ActiveRecord::Base
   attr_accessible :resource_id, :resource_type, :image, :image_file_name
   belongs_to :resource, :polymorphic => true

   validates_attachment_presence :image
   validates_attachment_size :image, :less_than => 5.megabytes
   validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']


	LARGE_IMAGE_SIZE = "300x300"
	SMALL_IMAGE_SIZE = "81x81"
	#MEDIUM_SMALL_IMAGE_SIZE = "180x84"
	SMALL_TINY_IMAGE_SIZE = "40x40"

	has_attached_file :image, 
      :path => ":rails_root/public/system/product/:id/:style/:filename",
      :url => "/system/product/:id/:style/:filename",
      :styles => { 
      :large => "#{LARGE_IMAGE_SIZE}",
      :small=> "#{SMALL_IMAGE_SIZE}>",
      #:medium=>"#{MEDIUM_IMAGE_SIZE}>",
      :small_tiny => "#{SMALL_TINY_IMAGE_SIZE}>"

    }
end
