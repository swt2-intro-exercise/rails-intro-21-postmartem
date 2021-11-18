require 'rails_helper'

describe "Show Author Page", type: :feature do
    it 'should show an authors page with the correct information'do 
        FactoryBot.create :author
        visit authors_path(@Alan)
        expect(page).to have_text("First name")
        expect(page).to have_text("Alan")
    end
    

end 