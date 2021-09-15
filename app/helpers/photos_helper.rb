module PhotosHelper
		def find_user params

		@user = User.find(params)
		return @user.email
	end
end
