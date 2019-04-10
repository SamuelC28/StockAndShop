class User < ApplicationRecord
    has_secure_password
    validates :password, presence: true,  length: {minimum:4}, allow_nil: true
    validates :email, :fullname, uniqueness: true, :case_sensitive => false #, message: 'has already taken, choice not avaible!'
    validates :email, presence: true , length: {maximum:255}, uniqueness: { case_sensitive: false}
    validates_uniqueness_of :category_name, :case_sensitive => false, message: 'has already taken'
    validates_format_of :category_name, :with => /[a-zA-Z]/, message: 'There should be at least one character.'
   
    has_many :items
    # has_one :cart
    # has_many :categories 

+
  
  
end
