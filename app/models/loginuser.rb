class Loginuser < ActiveRecord::Base

   def self.authenticate(username , password)
       usr = find_by(username: username)
       if usr != nil && usr.password == password then
          usr
       else
          return
       end
   end

  has_many :categories
  has_many :prices
  has_many :familyusers

end
