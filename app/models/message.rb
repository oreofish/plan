# == Schema Information
#
# Table name: messages
#
#  id             :integer         not null, primary key
#  user_id        :integer
#  content        :string(255)
#  has_attachment :boolean
#  created_at     :datetime
#  updated_at     :datetime
#

class Message < ActiveRecord::Base
  validates :content, :presence => true, :length => { :maximum => 140 }
end
