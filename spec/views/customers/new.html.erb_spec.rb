require 'spec_helper'

describe "customers/new.html.erb" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :identification => "MyString",
      :name => "MyString",
      :unit => "MyString",
      :job => "MyString",
      :rg => "MyString",
      :mother_name => "MyString"
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path, :method => "post" do
      assert_select "input#customer_identification", :name => "customer[identification]"
      assert_select "input#customer_name", :name => "customer[name]"
      assert_select "input#customer_unit", :name => "customer[unit]"
      assert_select "input#customer_job", :name => "customer[job]"
      assert_select "input#customer_rg", :name => "customer[rg]"
      assert_select "input#customer_mother_name", :name => "customer[mother_name]"
    end
  end
end
