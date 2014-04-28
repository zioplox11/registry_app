require 'spec_helper'

  describe 'a new user visits the homepage' do

    it 'displays the name of the app' do
      visit root_path
      expect( page ).to have_content 'Registry App'
    end


  end
