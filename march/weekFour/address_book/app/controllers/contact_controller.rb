class ContactController < ApplicationController
	def index
		@contacts = Contact.order(name: :asc)
		                   .limit(10) #don't need this .limit
		render "address_book"
	end

	def new
		render 'new_contact'
	end

	def create
		name_entered = params[:contact][:name]
		address_entered = params[:contact][:address]
		phoneNum_entered = params[:contact][:phone]
		email_entered = params[:contact][:email]
		new_contact = Contact.new

		valid_contacts = new_contact.validate(name_entered, address_entered, phoneNum_entered, email_entered)

		if valid_contacts
			new_contact.save
			redirect_to('/address_book')
		else
			redirect_to('/new_contact')
		end
	end

	def show
		id = params[:id]
		@contact = Contact.find_by(id: id)
		render 'contact_info'
	end
end


# create(name: name_entered, address: address_entered, phone_number: phoneNum_entered, email: email_entered)











