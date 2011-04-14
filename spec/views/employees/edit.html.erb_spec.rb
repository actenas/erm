require 'spec_helper'

describe "employees/edit.html.erb" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :identification => "MyString",
      :name => "MyString",
      :unit => "MyString",
      :job => "MyString",
      :rg => "MyString",
      :mother_name => "MyString"
    ))
  end

  it "renders the edit employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employees_path(@employee), :method => "post" do
      assert_select "input#employee_identification", :name => "employee[identification]"
      assert_select "input#employee_name", :name => "employee[name]"
      assert_select "input#employee_unit", :name => "employee[unit]"
      assert_select "input#employee_job", :name => "employee[job]"
      assert_select "input#employee_rg", :name => "employee[rg]"
      assert_select "input#employee_mother_name", :name => "employee[mother_name]"
    end
  end
end
