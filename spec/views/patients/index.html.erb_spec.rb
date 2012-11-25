require 'spec_helper'

describe "patients/index" do
  before(:each) do
    assign(:patients, [
      stub_model(Patient,
        :health_id => 1,
        :first_name => "First Name",
        :last_name => "Last Name",
        :gender => "Gender",
        :phone => "Phone",
        :email => "Email",
        :password_digest => "Password Digest"
      ),
      stub_model(Patient,
        :health_id => 1,
        :first_name => "First Name",
        :last_name => "Last Name",
        :gender => "Gender",
        :phone => "Phone",
        :email => "Email",
        :password_digest => "Password Digest"
      )
    ])
  end

  it "renders a list of patients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
  end
end
