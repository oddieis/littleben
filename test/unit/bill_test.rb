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

require 'test_helper'

class BillTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
