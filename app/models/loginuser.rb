class Loginuser < ActiveRecord::Base
   def self.authenticate(password, username)
       usr = find_by(username: username)
       if usr != nil && usr.password then
          usr
       else
          return
       end
   end
end
