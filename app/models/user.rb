# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  acts_as_authentic
end
