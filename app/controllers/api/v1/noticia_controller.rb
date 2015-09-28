class Api::V1::NoticiaController < ApplicationController
	def index
		#thing_ids = Noticia.find( :all, :select => 'id' ).map( &:id )
		#@things   = Noticia.find( (1..5).map { thing_ids.delete_at( thing_ids.size * rand ) } )
		if params[:type] == "detail"
			if params[:group].blank? || params[:lang].blank?
				render json: {
					status: "error",
					message: "Los parametros group e idioma no puede estar vacio"
				}.to_json
			else
				@noticias = Noticia.select("id","titulo","descripcion","file_file_name").where(:agrupador_id => params[:group]).where(:idioma_id => params[:lang])
				render :json => @noticias
				#render :json => @noticias
			end
			
		else
			if params[:date].blank? || params[:lang].blank?
				render json: {
					status: "error",
					message: "Los parametros fecha e idioma no puede estar vacio"
				}.to_json
			else
				@noticias = Noticia.where(:fecha => params[:date] ..Time.now.strftime("%Y/%m/%d")).where(:idioma_id => params[:lang]).limit(5).group('agrupador_id').order("RANDOM()").count('id')
				render :json => json(@noticias)		
			end
		end	

	end
	
	private
		def json(value)
		  elementos = value.map do |k,v|
		  	@agrupador    = Agrupadore.where(:id => k).pluck(:titulo)
		  	@agrupador_id = Agrupadore.where(:id => k).pluck(:id)
		  	@noti 	   = Noticia.where(:agrupador_id => k).pluck(:categoria_id)
		  	@categoria = Categoria.where(:id => @noti).pluck(:titulo)
		  	@idioma    = Idioma.where(:id => params[:lang]).pluck(:titulo)
		    { 
		     :grupo => @agrupador[0],
		     :categoria => @categoria[0],
		     :leyenda => "Ha habido #{v} #{@agrupador[0]}",
		     :grupo_id => @agrupador_id[0],
		     :idioma => @idioma[0]
		     }
		  end
		  elementos.to_json
		end
end