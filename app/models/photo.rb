class Photo < ApplicationRecord

  has_attached_file :avatar, 
                    :default_url => "/assets/missing.jpeg"

  validates_attachment_content_type :avatar, 
                                    :content_type => /\Aimage\/.*\Z/

end
