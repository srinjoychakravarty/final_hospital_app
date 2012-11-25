require 'spec_helper'

describe "patients/show" do
  before(:each) do
    @patient = assign(:patient, stub_model(Patient,
      :health_id => 1,
      :first_name => "First Name",
      :last_name => "Last Name",
      :gender => "Gender",
      :phone => "Phone",
      :email => "Email",
      :password_digest => "Password Digest"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Gender/)
    rendered.should match(/Phone/)
    rendered.should match(/Email/)
    rendered.should match(/Password Digest/)
  end
end
