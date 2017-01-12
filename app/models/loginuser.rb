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
  has_many :goals
  has_many :notices

  validates :password, length: { in: 6..12 }
  validates_uniqueness_of :password, :message => "は既に使用されています"
  

end
