require 'rails_helper'

describe 'Authentication' do

  describe 'signin page' do
    before { visit login_path }
    it 'should have content \'Sign in\'' do
      expect(page).to have_content('Sign in')
      expect(page).to have_title('Sign in')
    end
  end

  describe 'signin' do
    before { visit login_path }

    context 'with invalid information' do
      before { click_button "Sign in" }
      it 'should display errors' do
        expect(page).to have_selector('div.alert.alert-danger')
      end
    end

    context 'with valid information' do
      let (:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email", with: user.email
        fill_in "Password", with: user.password
        click_button "Sign in"
      end

      it 'should have username as title' do
        expect(page).to have_title(user.name)
      end

    end
  end
end