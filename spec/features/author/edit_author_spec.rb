require 'rails_helper'

 describe "Edit author page", type: :feature do
    it 'should exist an edit author page' do 
        @author = FactoryBot.create :author
        visit authors_path
        expect(page).to have_link 'Edit', href: edit_author_path(@author)
    end
    it 'should save changes after editing an author page' do
        @author = FactoryBot.create :author
        visit edit_author_path(@author)
        page.fill_in 'author[last_name]', with: 'Turing'
        page.fill_in 'author[first_name]', with: 'Blan'
        page.fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
        find('input[type="submit"]').click
    end
    it 'should have a delete link' do
        @author = FactoryBot.create :author
        visit authors_path
        expect(page).to have_link 'Delete'
        expect(Author.count).to eq(1)
        find('a[data-method="delete"]').click
        expect(Author.count).to eq(0)
    end


 end
