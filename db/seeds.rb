# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

require "faker"

client = Client.create! :name => "XX房地产公司", :contact_person => "侯杰", :contact_tel => "010-1234532"
client.users.create! :name => "经理", :login => "admin", :password => "adminadmin",
  :password_confirmation => "adminadmin", :email => "adminadmin@admin.com", :roles => ["boss"], :mobile => '13811223212'



