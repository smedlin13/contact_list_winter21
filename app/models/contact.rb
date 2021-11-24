class Contact < ApplicationRecord
  #Associations
  # belongs_to
  # # who the parent is
  # # child models
  # has_many
  # has_one
  # has_many :through
  # # parent models
  # # who the children models are 
  # dependent
  # # needed option

  has_many :notes, dependent: :destroy #when establishing parent & child relationship, need to define what would happen if that relationship wasn't defined
  has_one :note 


  #validations
  #makes sure the data going to the database matches the requirement
  # confirmation
  # - makes sure that 3 fields within the form is matching
  # inclusion
  # - makes sure that a field is included within a given setup
  # - lets say that a given project is a coffee model:
  # class Coffee < ActiveRecord::Base
  #   validates :size, inclusion: {
  # in: %w(small medium large),
  #   message: "%{value} is not a valid size"
  #   }
  # end


  # length
  # - how many characters you are able to type for that Action
  # ex: passwords, username


  # numericality
  # - makes sure that a field is a type of number
  # ex: age, points, 
  # class Player < ActiveRecord::Base
  #   validates :points, numericality: true
  #   validates :games_played, numericality: ( only_integer: true)
  # end

  # presence
  # - makes sure you"'"re not passing in an empty field
  # needs to be some presence 

  # uniqueness
  # - makes sure that theres only one record with that value

  #methods
  #callbacks
# end

# # class Account < ActiveRecord::Base
#   #   validates :email, uniqueness: true
#   # end

#   validates :first_name, :last_name, :age, :email, :phone, :friend, presence: true
#   validates :email, uniqueness: true
#   validates :age, numericality: { only_integer: true }


#   # methods
#   # callbacks
# end

# callbacks
  # - trigger logic based off of an event
  # before_validation
  # after_validation
  # before_save
  # after_save
  # around_save
  # before_create
  # after_create
  # around_create

  # class CreditCard < ActiveRecord::Base
  #   before_save :encrypt_card_number
   
  #   private
   
  #     def encrypt_card_number
  #       self.card_number = bcrypt(self.card_number)
  #     end
  # end

  # methods
  # class method
  # class Person < ActiveRecord::Base
  #   # called on a class Person.by_first_name
  #   def self.by_first_name
  #     order(:first_name)
  #   end
  # end

  # # instance method
  # class Person < ActiveRecord::Base
  #   # called on an instance @person.full_name
  #   def full_name
  #    "#{self.first_name} {self.last_name}"
  #   end
  # end

  # fat model skinny controller - any logic should be in model, controller actions 

# end