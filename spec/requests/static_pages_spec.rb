require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

# THIS IS NOT WORKING FOR SOME REASON.  COULD IT BE A VERSION ISSUE?  MY GEMFILE IS NOW TOTALLY DIFFERENT THAN THE BOOK.
#    it "should have the base title" do
#      visit '/static_pages/home'
#      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
#    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
	
	it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

# THIS DOES WORK.  NOT SURE WHY I WAS USING THIS IN THE PREVIOUS ASSIGNMENT.  WAS IT DIFFERENT IN THE PREVIOUS ONLINE BOOK?
#    it "should have the title 'Home'" do
#      visit '/static_pages/home'
#      expect(page).to have_title("#{base_title} | Home")
#    end

# THIS DOES WORK.  NOT SURE WHY I WAS USING THIS IN THE PREVIOUS ASSIGNMENT.  WAS IT DIFFERENT IN THE PREVIOUS ONLINE BOOK?
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

# THIS IS NOT WORKING FOR SOME REASON.  COULD IT BE A VERSION ISSUE?  MY GEMFILE IS NOW TOTALLY DIFFERENT THAN THE BOOK.
#    it "should have the title 'Help'" do
#      visit '/static_pages/help'
#      page.should have_selector('title', :text => "#{base_title} | Help")
#    end

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

# THIS DOES WORK.  NOT SURE WHY I WAS USING THIS IN THE PREVIOUS ASSIGNMENT.  WAS IT DIFFERENT IN THE PREVIOUS ONLINE BOOK?
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

# THIS IS NOT WORKING FOR SOME REASON.  COULD IT BE A VERSION ISSUE?  MY GEMFILE IS NOW TOTALLY DIFFERENT THAN THE BOOK.
#    it "should have the title 'About Us'" do
#      visit '/static_pages/about'
#      page.should have_selector('title', :text => "#{base_title} | About Us")
#    end

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

# THIS DOES WORK.  NOT SURE WHY I WAS USING THIS IN THE PREVIOUS ASSIGNMENT.  WAS IT DIFFERENT IN THE PREVIOUS ONLINE BOOK?
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

# THIS IS NOT WORKING FOR SOME REASON.  COULD IT BE A VERSION ISSUE?  MY GEMFILE IS NOW TOTALLY DIFFERENT THAN THE BOOK.
#    it "should have the title 'Contact'" do
#      visit '/static_pages/contact'
#      page.should have_selector('title', :text => "#{base_title} | Contact")
#    end

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

# THIS DOES WORK.  NOT SURE WHY I WAS USING THIS IN THE PREVIOUS ASSIGNMENT.  WAS IT DIFFERENT IN THE PREVIOUS ONLINE BOOK?
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
