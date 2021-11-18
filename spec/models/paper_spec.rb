require 'rails_helper'

describe "Paper instance creation", type: :model do
    it 'have an empty author list' do 
        paper = Paper.new(title:"ABC",venue:"DEF",year:10)
        expect(paper.authors).to eq([])
        
    end
end

