# == Schema Information
#
# Table name: users
#
#  id                     :integer         not null, primary key
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(128)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

require 'spec_helper'

describe User do
  before(:each) do 
    @user = {
      :email => "test@test.net",
      :password => "abc123",
      :password_confirmation => "abc123"
    }
  end
  
  it "should create new user" do 
    User.create!(@user)
  end
  
  it "should NOT create user with short passwd" do 
    new_password = 'a' * 5
    user = User.new(@user.merge(:password => new_password,
                                :password_confirmation => new_password))
    user.should_not be_valid
  end
  
  it "should NOT create user with long passwd" do 
    new_password = 'a' * 129
    user = User.new(@user.merge(:password => new_password,
                                :password_confirmation => new_password))
    user.should_not be_valid
  end
  
  it "should NOT create new wrong email" do 
    wrong_email = "12345"
    user = User.new(@user.merge(:email => wrong_email))
    user.should_not be_valid
    wrong_email = "test@work"
    user = User.new(@user.merge(:email => wrong_email))
    user.should_not be_valid
    wrong_email = "@help.net"
    user = User.new(@user.merge(:email => wrong_email))
    user.should_not be_valid
    wrong_email = "test@"
    user = User.new(@user.merge(:email => wrong_email))
    user.should_not be_valid
    right_email = "test@test.net"
    user = User.new(@user.merge(:email => right_email))
    user.should be_valid
  end
end
