class Api::V1::LikeController < ApplicationController
	def index
		if params[:type] == "likes"
			@conteo_like = Like.where(:noticium_id => params[:id]).where.not(:like => 0).count(:like)
			render json: 
			{
				likes: @conteo_like
			}
		end
		if params[:type] == "dislikes"
			@conteo_dislike = Like.where(:noticium_id => params[:id]).where.not(:dislike => 0).count(:dislike)
			render json: 
			{
				dislikes: @conteo_dislike
			}
		end
		if params[:type] == "like"
			@existe = Like.select("id").where(:noticium_id => params[:id]).where(:user_id => params[:user])
 			if @existe.blank?	
 				 @like = Like.create(
 						:like => 1,
 						:dislike => 0,
 						:noticium_id => params[:id],
 						:user_id => params[:user]
 						)

 				if @like.save
 					render json: {
 						status: "Ok"
 					}
 				end
 			else

 				@like_result = Like.select("like").where(:noticium_id => params[:id]).where(:user_id => params[:user])
 			   	     if @like_result[0].like === 0 
		 			   @like_result_id = Like.select("id").where(:noticium_id => params[:id]).where(:user_id => params[:user])
		 			   @busca_id = Like.find(@like_result_id[0].id)
		 			   @busca_id.update(:like => 1)
		 			   @busca_id.update(:dislike => 0)
		 				if @busca_id.save
		 					render json: {
		 						status: "Actualizacion Ok"
		 					}
						end
 					 else
 					 	render json: {
		 					status: "Usted ya cuenta con un like para esta noticia"
		 				}
	
				      end
 			end
 		end
 		if params[:type] == "dislike"
 			   @existe = Like.select("id").where(:noticium_id => params[:id]).where(:user_id => params[:user])
 			   if @existe.blank?
	 			   	@dislike = Like.create(
	 						:like => 0,
	 						:dislike => 1,
	 						:noticium_id => params[:id],
	 						:user_id => params[:user]
	 						)

	 				if @dislike.save
	 					render json: {
	 						status: "Dislike creado exitosamente"
	 					}
	 				end
 			   	else
 			   	     @dislike_result = Like.select("dislike").where(:noticium_id => params[:id]).where(:user_id => params[:user])
 			   	    if @dislike_result[0].dislike === 1 
		 			   render json: {
		 					status: "Usted ya cuenta con un dislike para esta noticia"
		 				}
 					else
 					   @dislike_result_id = Like.select("id").where(:noticium_id => params[:id]).where(:user_id => params[:user])
		 			   @busca_id = Like.find(@dislike_result_id[0].id)
		 			   @busca_id.update(:like => 0)
		 			   @busca_id.update(:dislike => 1)
		 				if @busca_id.save
		 					render json: {
		 						status: "Actualizacion Ok"
		 					}
						end
				    end
 			   end
		end
	end
end