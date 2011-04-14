require 'spec_helper'

describe "tasks/new.html.erb" do
  before(:each) do
    assign(:task, stub_model(Task,
      :ticket_id => nil,
      :message => "MyText",
      :status => "MyString",
      :invalid => false
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path, :method => "post" do
      assert_select "input#task_ticket_id", :name => "task[ticket_id]"
      assert_select "textarea#task_message", :name => "task[message]"
      assert_select "input#task_status", :name => "task[status]"
      assert_select "input#task_invalid", :name => "task[invalid]"
    end
  end
end
