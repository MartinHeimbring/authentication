require 'rails_helper'

describe 'Static pages' do

  describe 'Home page' do

    before(:each) do
      get '/static_pages/home'
    end

    it 'should have the content \'Rails Authentication\'' do
      expect(response.body).to include('Rails Authentication')
    end

    it 'should have a dynamically generated title' do
      expect(response.body).to include("Rails Authentication | Home")
    end

  end


  describe 'Help page' do

    before(:each) { get '/static_pages/help' }

    it 'should have the content \'Hilfe\'' do
      expect(response.body).to include('Hilfe')
    end

    it 'should have a title' do
      expect(response.body).to include("Rails Authentication | Help")
    end

  end
end