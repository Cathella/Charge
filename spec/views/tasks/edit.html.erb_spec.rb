require 'rails_helper'

RSpec.describe "tasks/edit", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      description: "MyText"
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "textarea[name=?]", "task[description]"
    end
  end
end
