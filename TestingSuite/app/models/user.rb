class User < ActiveRecord::Base
	has_many :orders
  validates :firstname, :lastname, :companyname, presence: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, uniqueness: {case_sensitive: false }


  	def full_name
  		"#{self.firstname} #{self.lastname}"
	end

end
