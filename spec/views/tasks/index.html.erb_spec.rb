require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        description: "MyText"
      ),
      Task.create!(
        description: "MyText"
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
