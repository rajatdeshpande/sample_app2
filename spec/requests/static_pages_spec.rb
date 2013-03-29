require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have content 'Sample App'" do	
      visit '/static_pages/home'
 #     page.should have_content('Sample App')
      page.should have_selector('h1', :text=>'Sample App')
    end
      it "should have the right title" do

        visit '/static_pages/home'
        page.should have_selector('title', 
                    :text=> 'Ruby on rails tutorial Sample App | Home')
      end
  end
  
  describe "Help Page" do
  	it "should have content 'Help'" do
  		visit '/static_pages/help'
 # 		page.should have_content('Help')
      	page.should have_selector('h1', :text=>'Help')
  	end

    it "should have the right title" do
      
       visit '/static_pages/help'
        page.should have_selector('title', 
                    :text=> 'Ruby on rails tutorial Sample App | Help')
    end
  end


  describe "About Page" do
  	it "should have content 'About Us'" do
  		visit '/static_pages/about'
#  		page.should have_content('About Us') 
      	page.should have_selector('h1', :text=>'About Us')
  	end
    it "should have the right title" do

       visit '/static_pages/about'
        page.should have_selector('title', 
                    :text=> 'Ruby on rails tutorial Sample App | About Us')
    end  	
  end


  describe 'Contact Page' do
    it "should have content 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have the right title" do

      visit '/static_pages/contact'
      page.should have_selector('title', :text => 'Ruby on rails tutorial Sample App | Contact Us')
      
    end
    
  end

end
