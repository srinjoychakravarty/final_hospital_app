require 'spec_helper'

describe "appointments/index" do
  before(:each) do
    assign(:appointments, [
      stub_model(Appointment,
        :patient_id => 1,
        :doctor_id => 2,
        :time_slot => "Time Slot"
      ),
      stub_model(Appointment,
        :patient_id => 1,
        :doctor_id => 2,
        :time_slot => "Time Slot"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Time Slot".to_s, :count => 2
  end
end
