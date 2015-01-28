require 'rails_helper'

describe 'User pages' do

  describe 'Sign up page' do

    it 'should have display \'Sign Up\'' do
      visit users_new_path
      expect(page).to have_content('Sign Up')
    end
    
  end
end