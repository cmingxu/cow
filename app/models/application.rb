class Application < ActiveRecord::Base
  attr_accessible :client_id, :description, :name
end
