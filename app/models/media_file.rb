class MediaFile < ActiveRecord::Base
	 has_attached_file  :file,
                        :default_url => '/assets/no-image.png',
                        :styles => { :small => ["180x100!",:jpg], :meddium => ["600x400!",:jpg]},
                        :default_style => :meddium,
                        :storage => :s3,
                        :path => "uploads/:file_id/:style/:filename"
end
