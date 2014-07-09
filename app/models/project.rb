class Project < ActiveRecord::Base
  set_table_name "projects"

  attr_accessible :address, :build_begin_at, :build_end_at, :builder, :code, :created_by, :desc, :desc, :jianli, :name, :wuye

  belongs_to :client
  belongs_to :created_user, :foreign_key => :created_by, :class_name => "User"

end
