class User < ActiveRecord::Base
  attr_accessible :name, :email, :password
  def self.authenticate(email, password)
    user = find_by_email(email) && find_by_password(password)

  end
end
