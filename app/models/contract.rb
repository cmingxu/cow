class Contract < ActiveRecord::Base
  attr_accessible :added_by_id, :code, :desc, :name, :sign_date
end
