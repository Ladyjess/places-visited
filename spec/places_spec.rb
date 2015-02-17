require 'rspec'
require 'places'
require 'pry'

describe Place do
  before do
    Place.clear
  end

 describe '#name' do
  it 'list a name of a place' do
   test_place = Place.new('Madagascar')
   expect(test_place.name).to eq 'Madagascar'
  end
 end

 describe '.all' do
   it 'list all places' do
   test_place = Place.all
   expect(Place.all).to eq []
   end
 end

 describe '#save' do
   it 'saves places to list' do
     test_place = Place.new('California')
     test_place.save
     expect(Place.all).to eq [test_place]
   end
 end

 describe '.clear' do
   it 'empties the list of saved places' do
     Place.new('North Dakota').save
     Place.clear
     expect(Place.all).to eq []
   end
 end

 describe '#update' do
  it 'lets you make changes to list' do
    test_place = Place.new('botaka')
    test_place.save
    expect(test_place.update("jeringa")).to eq "jeringa"
  end
 end
end
