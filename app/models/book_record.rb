class BookRecord < ActiveRecord::Base
  attr_accessible :client_id, :department_id, :price, :project_id, :user_id
end
