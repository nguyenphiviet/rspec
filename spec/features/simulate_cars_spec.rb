require 'rails_helper'

RSpec.feature "SimulateCars", type: :feature do
  context 'Creating a car for simulating' do
    Steps 'Creating a car' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I fill in the car make and model year' do
        fill_in 'make', with: 'DeLorean'
        fill_in 'model_year', with: '1985'
      end
      And 'I can submit the information' do
        click_button 'Create new car'
      end
      Then "I can see the car's info" do
        expect(page).to have_content('Make: DeLorean')
        expect(page).to have_content('Year: 1985')
      end
      And 'I can see the speed of the car' do
        expect(page).to have_content('Speed: 0Km/h')
      end
    end
  end

  # Speedup
  context 'Simulating a car' do
    Steps 'Speeding up a car' do
      Given 'I have created a car' do
        visit '/'
        fill_in 'make', with: 'DeLorean'
        fill_in 'model_year', with: '1985'
        click_button 'Create new car'
      end
      Then "the car's speed is 0Km/h" do
        expect(page).to have_content('Speed: 0Km/h')
      end
      When "I can click the accelerate button" do
        click_button 'Accelerate'
      end
      Then 'the speed of the car should be 10Km/h higher' do
        expect(page).to have_content('Speed: 10Km/h')
      end
    end
  end
end
