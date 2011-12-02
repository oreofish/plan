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

require 'spec_helper'

describe Message do
  def valid_msg
    { 
      :user_id => 1,
      :content => 'test msg',
      :has_attachment => false
    }
  end
  
  it "should create new msg" do 
    Message.create!(valid_msg)
  end

  it "should NOT create msg with empty content" do 
    empty_content = ''
    empty_msg = Message.new(valid_msg.merge(:content => empty_content))
    empty_msg.should_not be_valid
  end

  it "should NOT create msg with too long content" do 
    long_content = 'a' * 141
    long_msg = Message.new(valid_msg.merge(:content => long_content))
    long_msg.should_not be_valid
  end
  
end
