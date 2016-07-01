class PagesController < ApplicationController

#wanted limited access to the schedule page
before_action :require_user, only: [:schedule, :upload, :userlist]
before_action :require_editor, only: [:upload]
before_action :require_admin, only: [:userlist]




	def home
	end

	def schedule
	end

	def upload
	end

	def admin
	end


	def loginerror
	end


	def accessdenied
	end

	def userlist
	end

end
