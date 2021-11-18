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

  # it 'should have an author list' do
   # @paper = FactoryBot.create :paper
    #expect(@paper.)
  # end


  end
