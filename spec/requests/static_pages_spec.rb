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
  
  describe "Criteria page" do
    it "should have the content 'Criteria'" do
      visit '/static_pages/criteria'
      page.should have_content('Criteria')
    end
    it "should have the title 'Criteria'" do
      visit '/static_pages/criteria'
      page.should have_selector('title',
                    :text => "Bargain Stock Funds: Criteria")
    end
  end
  
  describe "FundsView page" do
    it "should have the content 'View Funds'" do
      visit '/static_pages/fundsview'
      page.should have_content('View Funds')
    end
    it "should have the title 'View Funds'" do
      visit '/static_pages/fundsview'
      page.should have_selector('title',
                    :text => "Bargain Stock Funds: View Funds")
    end
  end
  
  describe "Discuss page" do
    it "should have the content 'Discuss'" do
      visit '/static_pages/discuss'
      page.should have_content('Discuss')
    end
    it "should have the title 'Discuss'" do
      visit '/static_pages/discuss'
      page.should have_selector('title',
                    :text => "Bargain Stock Funds: Discuss")
    end
  end

  describe "Technical page" do
    it "should have the content 'Technical'" do
      visit '/static_pages/technical'
      page.should have_content('Technical')
    end
    it "should have the title 'Technical'" do
      visit '/static_pages/technical'
      page.should have_selector('title',
                    :text => "Bargain Stock Funds: Technical")
    end
  end
  
  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "Bargain Stock Funds: Contact")
    end
  end

  describe "Links page" do
    it "should have the content 'Links'" do
      visit '/static_pages/links'
      page.should have_content('Links')
    end
    it "should have the title 'Links'" do
      visit '/static_pages/links'
      page.should have_selector('title',
                    :text => "Bargain Stock Funds: Links")
    end
  end

end
