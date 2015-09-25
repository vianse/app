class Api::V1::AppController < ApplicationController
	def index
		if params[:lang] == "1"
			render json: {
				:birthday_date => "Fecha de Nacimiento",
				:birthday_hour => "Hora de Nacimiento",
				:years => "Años",
				:months => "Meses",
				:days => "Días",
				:hours => "Horas",
				:minutes => "Minutos",
				:seconds => "Segundos",
				:my_time =>  "Mi tiempo",
				:boton => "Quieres saber que ha pasado desde entonces?",
				:share => "Compartir",
				:question => "Quieres saber mas?",
				:title => "Que ha pasado",
			}
		end
	end
end