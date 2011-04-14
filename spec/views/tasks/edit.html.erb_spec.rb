require 'spec_helper'

describe "tasks/edit.html.erb" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :ticket_id => nil,
      :message => "MyText",
      :status => "MyString",
      :invalid => false
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path(@task), :method => "post" do
      assert_select "input#task_ticket_id", :name => "task[ticket_id]"
      assert_select "textarea#task_message", :name => "task[message]"
      assert_select "input#task_status", :name => "task[status]"
      assert_select "input#task_invalid", :name => "task[invalid]"
    end
  end
end
