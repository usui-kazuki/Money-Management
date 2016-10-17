class Loginuser < ActiveRecord::Base

   def self.authenticate(username , password)
       usr = find_by(username: username)
       if usr != nil && usr.password then
          usr
       else
          return
       end
   end

  belongs_to :categories

end
