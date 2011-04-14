require 'spec_helper'

describe "employees/index.html.erb" do
  before(:each) do
    assign(:employees, [
      stub_model(Employee,
        :identification => "Identification",
        :name => "Name",
        :unit => "Unit",
        :job => "Job",
        :rg => "Rg",
        :mother_name => "Mother Name"
      ),
      stub_model(Employee,
        :identification => "Identification",
        :name => "Name",
        :unit => "Unit",
        :job => "Job",
        :rg => "Rg",
        :mother_name => "Mother Name"
      )
    ])
  end

  it "renders a list of employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Identification".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Job".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mother Name".to_s, :count => 2
  end
end
