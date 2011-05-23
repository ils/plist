# == Schema Information
# Schema version: 20110519043509
#
# Table name: requests
#
#  id         :integer         not null, primary key
#  rname      :string(255)
#  gdate      :date
#  tname1     :string(255)
#  tname2     :string(255)
#  tname3     :string(255)
#  tname4     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Request < ActiveRecord::Base
  attr_accessible(:rname, :gdate, :tname1, :tname2, :tname3, :tname4)
  
  # validates(:rname, :presence => true) one validation
  validates :rname, :presence => true,
                    :length => { :maximum => 50 }
                   

end
