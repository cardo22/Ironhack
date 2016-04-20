class Contact < ActiveRecord::Base
	def validate(name, address, phone, email)
		if name_address_nil?(name, address) && check_phone_num(phone) && check_email(email)
			true
		else
			false
		end
	end



	def name_address_nil?(name, address)
		if name == "" || address == ""
			false
		else
			self.name = name
			self.address = address
			true
		end
	end

	def check_phone_num(phone)
		if phone.match(/[0-9]/) && phone.length == 10
			true
		else
			false
		end
	end

	def check_email(email)
		email_arr = email.split(",")
		if email_arr[0].match(/[0-9]/) #unfinished error
			true
		else
			false
		end
	end
end
