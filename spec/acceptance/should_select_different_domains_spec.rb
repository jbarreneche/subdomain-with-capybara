require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Should Select Different Domains", %q{
  In order to ...
  As a ...
  I want to ...
} do

  scenario "no host change" do
    visit "/"
    page.should have_content('Home')
    page.should have_content('HOST: www.example.com')
  end

  scenario "host change" do
    switch_to_domain "http://subdomain.example.com"
    visit "/"
    page.should have_content('Home')
    page.should have_content('HOST: subdomain.example.com')
    
    click_link('Go somewhere')
    save_and_open_page
    page.should have_content('HOST: subdomain.example.com')
  end

end
