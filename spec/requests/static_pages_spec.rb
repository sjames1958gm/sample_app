require 'spec_helper'

describe "Static Pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home Page" do
    before { visit root_path }
    
    subject { page }

    it { should have_content('Sample App') }
    it { should have_title("#{base_title}") }
    it { should_not have_title("| Home") }

   end

  describe "Help Page" do
    before { visit help_path }
    
    subject { page }

    it { should have_content('Help') }
    it { should have_title("#{base_title} | Help") }

  end

  describe "About page" do
    before { visit about_path }

    subject { page }

    it { should have_content('About Us') }
    it { should have_title("#{base_title} | About") }

  end

  describe "Contact page" do
    before { visit contact_path }

    subject { page }

    it { should have_content('Contact') }
    it { should have_title("#{base_title} | Contact") }

  end
end

