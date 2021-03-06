require 'spec_helper'
require_relative '../lib/person'


describe Person do

  describe "male?" do
    context "is a guy" do
      let(:person_m) { Person.new(gender: "M") }

      it "is true" do
        expect( person_m.male? ).to be_truthy
      end

      it "should not contain 'F'" do
        expect( person_m.male? ).not_to eq("F")
      end

    end

    context "is a girl" do
      let(:person_female) { Person.new(gender: "F") }

      it "is false" do
        expect( person_female.male? ).to be_falsey
      end
      
      it "should not contain 'M'" do
        expect( person_female.male? ).not_to eq("M")
      end
    end
  end

  describe "old?" do
    context "user is old" do
      let(:person) { Person.new(age: 234) }
      
      it "is true" do
        expect( person.old? ).to be_truthy
      end
    end
  end

  describe "young?" do
    context "user is young" do
      let(:person) { Person.new(age: 34) }
      
      it "returns is false" do
        expect( person.young? ).to be_falsey
      end
    end
  end
end


