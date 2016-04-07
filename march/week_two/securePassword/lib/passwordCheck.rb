class Password_checker
	def check_password(email, password)
		if check_password_length(password) && check_password_char(password) && check_password_caps(password) && check_password_email(email, password)
			true
		else
			false
		end
	end

	def check_password_length(password)
		@password = password

		if @password.length > 7
			true
		else
			false
		end
	end

	def check_password_char(password)
		@password = password
		if @password.match(/[0-9]/) && @password.match(/[a-z]/) && @password.match(/[\W]/)
			true
		else
			false
		end	
	end

	def check_password_caps(password)
		@password = password

		if @password.match(/[A-Z]/) && @password.match(/[a-z]/)
			true
		else
			false
		end
	end

	def check_password_email(email, password)
		@password = password

		if @password.include?(email)
			false
		else
			true
		end
	end
end




