require 'rails_helper'

describe "Author instance creation", type: :model do
    it 'should have the right first name' do 
        author = Author.new(first_name:"Alan", last_name:"Turing", homepage:"http://wikipedia.org/Alan_Turing")
        expect(author.first_name).to eq("Alan")
    #end
    #it 'should have the right last name' do
        expect(author.last_name).to eq("Turing")
    #end
    # it 'should have the right homepage' do
        expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
    end
end