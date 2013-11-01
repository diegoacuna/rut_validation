class UserCustomI18n < ActiveRecord::Base
  self.table_name = "users"
  
  attr_accessible :rut

  validates :rut, :rut => { :message => :rut_invalid }
end