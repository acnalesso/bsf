require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Bargain Stock Funds'" do
      visit '/static_pages/home'
      page.should have_content('Bargain Stock Funds')
    end
  end
  
  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
  end

end
