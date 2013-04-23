require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Bargain Stock Funds'" do
      visit '/static_pages/home'
      page.should have_content('Bargain Stock Funds')
    end
    
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Bargain Stock Funds: Home")
    end
    
  end
  
  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
    
    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Bargain Stock Funds: About")
    end

    
  end

end
