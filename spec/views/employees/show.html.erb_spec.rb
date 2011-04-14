require 'spec_helper'

describe "employees/show.html.erb" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :identification => "Identification",
      :name => "Name",
      :unit => "Unit",
      :job => "Job",
      :rg => "Rg",
      :mother_name => "Mother Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Identification/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Unit/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Job/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rg/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mother Name/)
  end
end
