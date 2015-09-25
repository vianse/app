class Noticia < ActiveRecord::Base
  belongs_to :estatus
  belongs_to :categoria
  belongs_to :agrupador

  #Query para metodo de agrupación

  #scope :agrupacion, ->(fecha) { where(:fecha => fecha ..Time.now.strftime("%Y/%m/%d")).limit(5).order("RANDOM()").count }
  #scope :agrupacion, ->  { conteo.group(:categoria_id) }
  has_attached_file     :file,
                        :default_url => '/assets/no-image.png',
                        :styles => { :small => ["180x100!",:jpg], :meddium => ["600x400!",:jpg]},
                        :default_style => :meddium,
                        :storage => :s3,
                        :path => "uploads/:file_id/:style/:filename"
  
end
