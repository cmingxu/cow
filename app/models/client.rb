class Client < ActiveRecord::Base
  attr_accessible :contact_person, :contact_tel, :name

  has_many :users
  has_many :projects
  has_many :huxings

end
