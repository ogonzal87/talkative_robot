require 'spec_helper'
require_relative '../lib/user'

describe User do 
  
  describe "entrance_message" do
    context "tells the user if they are allowed to get in or not" do
      let(:person) { User.new(age: 23) }
      
      it "it evaluates the age correctly" do
        expect( person.entrance_message ).to eq("Please, come in!")
      end
    end
  end

  describe "age_based_message(age)" do
    context "compares age to 75 years" do
      let(:person) { User.new(age: 23) } 
      
      it "an aurgument is evaluated" do
        expect( person.age_based_message ).to be_truthy
      end

      it "tells you when you will turn 75" do
        expect( person.age_based_message ).to eq("you'll be 75 in #{75 - person.age} years")
      end

      it "tells you when you will turn 75" do
        expect( person.age_based_message ).to eq("you'll be 75 in #{75 - person.age} years")
      end

      it "Makes sure the number 75 is included in the string" do  
        expect("you'll be 75 in #{75 - person.age} years").to include "75"
      end
    end
  end

  describe "young_vs_old(age, gender)" do
    context "it asks you if you are a granda/ma or tells you that you are a young boy/girl" do
      let(:person) { User.new(age: 10, gender: "M") }

      it "says you are young boy?" do
        expect( person.young_vs_old ).to eq("you're a young boy")
      end

      it "returns true if 'M' is passed" do
        expect( person.young_vs_old ).to be_truthy
      end
    end
  end

end
