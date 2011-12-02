require 'spec_helper'

describe "messages/new.html.erb" do
  before(:each) do
    assign(:message, stub_model(Message,
      :user_id => 1,
      :content => "MyString",
      :has_attachment => ""
    ).as_new_record)
  end

  it "renders new message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => messages_path, :method => "post" do
      assert_select "input#message_user_id", :name => "message[user_id]"
      assert_select "input#message_content", :name => "message[content]"
      assert_select "input#message_has_attachment", :name => "message[has_attachment]"
    end
  end
end
