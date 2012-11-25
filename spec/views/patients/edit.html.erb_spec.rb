require 'spec_helper'

describe "patients/edit" do
  before(:each) do
    @patient = assign(:patient, stub_model(Patient,
      :health_id => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :gender => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :password_digest => "MyString"
    ))
  end

  it "renders the edit patient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => patients_path(@patient), :method => "post" do
      assert_select "input#patient_health_id", :name => "patient[health_id]"
      assert_select "input#patient_first_name", :name => "patient[first_name]"
      assert_select "input#patient_last_name", :name => "patient[last_name]"
      assert_select "input#patient_gender", :name => "patient[gender]"
      assert_select "input#patient_phone", :name => "patient[phone]"
      assert_select "input#patient_email", :name => "patient[email]"
      assert_select "input#patient_password_digest", :name => "patient[password_digest]"
    end
  end
end
