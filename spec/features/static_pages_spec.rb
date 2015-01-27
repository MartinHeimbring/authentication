require 'rails_helper'

describe 'Static pages' do

  describe 'Home page' do

    before(:each) do
      visit '/static_pages/home'
    end

    it 'should have the content \'Rails Authentication\'' do
      expect(page).to have_content('Rails Authentication')
    end

    it 'should have the title \'Home\'' do
      expect(page).to have_title('Rails Authentication System | Home')
    end

  end


  describe 'Help page' do

    before(:each) { visit '/static_pages/help' }

    it 'should have the content \'Hilfe\'' do
      expect(page).to have_content('Hilfe')
    end

    it 'should have the title \'Help\'' do
      expect(page).to have_title('Rails Authentication System | Help')
    end
  end
end