require 'rails_helper'

RSpec.describe "reports/edit", type: :view do
  before(:each) do
    @report = assign(:report, Report.create!(
      :name => "MyString",
      :description => "MyString",
      :page_url => "MyString",
      :report_type => 1
    ))
  end

  it "renders the edit report form" do
    render

    assert_select "form[action=?][method=?]", report_path(@report), "post" do

      assert_select "input#report_name[name=?]", "report[name]"

      assert_select "input#report_description[name=?]", "report[description]"

      assert_select "input#report_page_url[name=?]", "report[page_url]"

      assert_select "input#report_report_type[name=?]", "report[report_type]"
    end
  end
end