require 'rails_helper'

describe 'Static pages' do

  describe 'Home page' do

    before(:each) do
      get '/static_pages/home'
    end

    it 'should have the content \'Rails Authentication\'' do
      expect(response.body).to include('Rails Authentication')
    end

  end


  describe 'Help page' do

    before(:each) { get '/static_pages/help' }

    it 'should have the content \'Hilfe\'' do
      expect(response.body).to include('Hilfe')
    end

  end
end