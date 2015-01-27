require 'spec_helper'
require_relative '../lib/user'

describe User do 
  
  describe "entrance_message" do
    context "tells the user if they are allowed to get in or not" do
      age = 23 
      let(:person) { User.new(age: age) }
      
      it "it evaluates the age correctly" do 
        expect( person.entrance_message(age) ).to eq("Please, come in!")
      end
    end
  end

  describe "age_based_message(age)" do
    context "compares age to 75 years" do
      age = 23
      let(:person) { User.new(age: age) } 
      
      it "an aurgument is evaluated" do
        expect( person.age_based_message(age) ).to be_truthy
      end 

      it "tells you when you will turn 75" do
        expect( person.age_based_message(age) ).to eq("you'll be 75 in #{75 - person.age} years")
      end

      it "tells you when you will turn 75" do
        expect( person.age_based_message(age) ).to eq("you'll be 75 in #{75 - person.age} years")
      end

      it "Makes sure the number 75 is included in the string" do  
        expect("you'll be 75 in #{75 - person.age} years").to include "75"
      end
    end
  end

  describe "young_vs_old(age, gender)" do
    context "it asks you if you are a granda/ma or tells you that you are a young boy/girl" do
      age = 10
      gender = "M"
      let(:person) { User.new(age: age, gender: gender) }

      it "says you are young boy?" do
        expect( person.young_vs_old(age) ).to eq("you're a young boy")
      end

      it "returns true if 'M' is passed" do
        expect( person.young_vs_old(age) ).to be_truthy
      end

      it "age is a required data" do
        expect( person.age ).not_to eq(nil) 
     end
    end
  end
end