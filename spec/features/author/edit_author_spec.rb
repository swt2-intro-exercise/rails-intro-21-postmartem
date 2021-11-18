require 'rails_helper'

 describe "Edit author page", type: :feature do
    it 'should exist an edit author page' do 
        @author = FactoryBot.create :author
        visit authors_path
        expect(page).to have_link 'Edit', href: edit_author_path(@author)
    
    end

 end
