require 'spec_helper'

describe 'Static Pages' do
  describe 'Home page' do
    it 'should have the content "Micro"' do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
      visit '/static_pages/home'
      page.should have_content 'Micro'
    end

    it 'should have the right title' do
      visit '/static_pages/home'
      page.should have_selector('title', text: 'Home | Micro')
    end
  end

  describe 'Help page' do
    it 'should have the content "Help"' do
      visit '/static_pages/help'
      page.should have_content 'Help'
    end

    it 'should have the right title' do
      visit '/static_pages/help'
      page.should have_selector('title', text: 'Help | Micro')
    end
  end

  describe 'About us page' do
    it 'should have the contnet "About us"' do
      visit '/static_pages/about'
      page.should have_content 'About us'
    end

    it 'should have the right title' do
      visit '/static_pages/about'
      page.should have_selector('title', text: 'About us | Micro')
    end
  end
end
