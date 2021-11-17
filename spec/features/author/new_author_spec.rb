require 'rails_helper'

 describe "New author page", type: :feature do
   it "should exist at 'new_author_path' and render withour error" do
     # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
     visit new_author_path
   end
   it "should have text inputs for an author's frst name, last name, and homepage" do
    visit new_author_path
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
   end
   it 'should save new authors in the DB' do
    visit new_author_path
    page.fill_in 'author[last_name]', with: 'Turing'
    page.fill_in 'author[first_name]', with: 'Alan'
    page.fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
    find('input[type="submit"]').click
   end

   it 'should not accept authors without a last name' do
    author = Author.new(first_name:"Alan", last_name:"", homepage:"http://wikipedia.org/Alan_Turing")
    expect(author).to_not be_valid
   end

   it 'should show error page if error occurs' do
    visit new_author_path
    page.fill_in 'author[first_name]', with: 'Alan'
    page.fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
    find('input[type="submit"]').click
    expect(page).to have_text("Nope")
   end

   it 'should show error page if error occurs' do
    visit new_author_path
    page.fill_in 'author[first_name]', with: 'Alan'
    page.fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
    find('input[type="submit"]').click
    expect(page).to have_text("error")
   end





 end
