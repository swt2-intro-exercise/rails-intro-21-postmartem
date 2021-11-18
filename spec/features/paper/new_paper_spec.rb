require 'rails_helper'

 describe "New paper page", type: :feature do
   it "should exist at 'new_paper_path' and render withour error" do
     visit new_paper_path
    
   end

   it 'should not accept papers without a title' do
    @paper = Paper.new(venue:"mind 49: 433-460", year:1950)
    expect(@paper).to_not be_valid
   end

   it 'should not accept papers without a venue' do
    @paper = Paper.new(title: "computing machinery and intelligence", year:1950)
    expect(@paper).to_not be_valid
   end

   it 'should show an authors name on the papers page' do
    @author = FactoryBot.create :author
    @paper = @author.papers.create(title: "computing machinery and intelligence", venue: "mind 49: 433-460",year: 1950 )
    visit paper_path(@paper)
    expect(page).to have_text("Alan Turing")
   end

   it "should have a select for authors" do
    visit new_paper_path
    expect(page).to have_field('paper[author_ids][]')
  end


  end
