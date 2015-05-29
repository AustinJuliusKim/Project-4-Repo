class Order < ActiveRecord::Base
  belongs_to :user

  # def details(options={})
  # 	@egg_size
  # 	@egg_color
  # 	@quantity
  # end

  
end
