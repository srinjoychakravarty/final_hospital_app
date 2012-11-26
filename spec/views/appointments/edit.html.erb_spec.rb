require 'spec_helper'

describe "appointments/edit" do
  before(:each) do
    @appointment = assign(:appointment, stub_model(Appointment,
      :patient_id => 1,
      :doctor_id => 1,
      :time_slot => "MyString"
    ))
  end

  it "renders the edit appointment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
      assert_select "form", :action => appointments_path(@appointment), :method => "post" do
      assert_select "input#appointment_patient_id", :name => "appointment[patient_id]"
      assert_select "select#appointment_doctor_id", :name => "appointment[doctor_id]"
      assert_select "select#appointment_time_slot", :name => "appointment[time_slot]"
    end
  end
end
