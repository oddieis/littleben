# == Schema Information
#
# Table name: bills
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  summay     :text
#  body       :text
#  sponsor_id :integer
#  vote_plus  :integer
#  vote_minus :integer
#  created_at :datetime
#  updated_at :datetime
#

class Bill < ActiveRecord::Base
	attr_accessible :title, :summay, :body, :vote_minus, :vote_plus
end
