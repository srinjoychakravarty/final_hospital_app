require 'spec_helper'

describe "appointments/show" do
  before(:each) do
    @appointment = assign(:appointment, stub_model(Appointment,
      :patient_id => 1,
      :doctor_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
