require 'spec_helper'

describe "tickets/new.html.erb" do
  before(:each) do
    assign(:ticket, stub_model(Ticket,
      :number => "MyString",
      :customer_id => nil,
      :faq_id => nil,
      :message => "MyText",
      :status => "MyString",
      :invalid => false
    ).as_new_record)
  end

  it "renders new ticket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tickets_path, :method => "post" do
      assert_select "input#ticket_number", :name => "ticket[number]"
      assert_select "input#ticket_customer_id", :name => "ticket[customer_id]"
      assert_select "input#ticket_faq_id", :name => "ticket[faq_id]"
      assert_select "textarea#ticket_message", :name => "ticket[message]"
      assert_select "input#ticket_status", :name => "ticket[status]"
      assert_select "input#ticket_invalid", :name => "ticket[invalid]"
    end
  end
end
