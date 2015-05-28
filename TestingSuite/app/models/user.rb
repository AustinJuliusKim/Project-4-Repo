class User < ActiveRecord::Base

  validates :firstname, :lastname, :companyname, :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, uniqueness: {case_sensitive: false }


  def full_name
  "#{self.firstname} #{self.lastname}"
end

end