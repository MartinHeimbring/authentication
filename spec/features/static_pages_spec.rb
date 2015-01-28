require 'rails_helper'

describe 'Static pages' do

  describe 'Home page' do

    before(:each) do
      visit '/'
    end

    it 'should have the content \'Rails Authentication\'' do
      expect(page).to have_content('Rails Authentication')
    end

    it 'should have a dynamically generated title' do
      expect(page).to have_title("Rails Authentication | Home")
    end

  end


  describe 'Help page' do

    before(:each) { visit '/help' }

    it 'should have the content \'Hilfe\'' do
      expect(page).to have_content('Hilfe')
    end

    it 'should have a title' do
      expect(page).to have_title("Rails Authentication | Help")
    end

  end
end