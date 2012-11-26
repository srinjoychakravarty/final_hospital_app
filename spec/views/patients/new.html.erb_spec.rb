require 'spec_helper'

describe "patients/new" do
  before(:each) do
    assign(:patient, stub_model(Patient,
      :health_id => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :gender => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :password_digest => "MyString"
    ).as_new_record)
  end

  it "renders new patient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => patients_path, :method => "post" do
      assert_select "input#patient_health_id", :name => "patient[health_id]"
      assert_select "input#patient_first_name", :name => "patient[first_name]"
      assert_select "input#patient_last_name", :name => "patient[last_name]"
      assert_select "select#patient_gender", :name => "patient[gender]"
      assert_select "input#patient_phone", :name => "patient[phone]"
      assert_select "input#patient_email", :name => "patient[email]"
      assert_select "input#patient_password", :name => "patient[password]"
      assert_select "input#patient_password_confirmation", :name => "patient[password_confirmation]"
    end
  end
end
