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
  before(:each) do 
    @msg = { 
      :user_id => 1,
      :content => 'test msg',
      :has_attachment => false
    }
  end
  
  it "should create new msg" do 
    Message.create!(@msg)
  end

  it "should NOT create msg with too long content" do 
    long_content = 'a' * 141
    long_msg = Message.new(@msg.merge(:content => long_content))
    long_msg.should_not be_valid
  end
  
end
