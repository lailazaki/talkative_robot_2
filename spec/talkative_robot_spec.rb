require 'spec_helper'
require_relative '../lib/user'

describe User do
  
  context "user_greeting" do
    let(:user) { User.new(name:"Laila") }
    let(:user) { User.new(age:"30") }
    let(:user) { User.new(gender:"F") }
    it "returns a greeting" do
      expect(current_user.greeting).to eq("Hello, Ma'am. You are 30 years old.")
    end
  end

  context "age_based_message" do
    let (:user) { User.new(age: 80) }
    it "returns a message" do
      expect (user.age_based_message).to eq("You turned 75 5 years ago!")
    end
  end

  context "age_based_message" do
    let (:user) { User.new(age: 65) }
    it "returns a message" do
      expect (user.age_based_message).to eq("You will turn 75 in 10 years!")
    end
  end
  context "age_based_message" do
    let (:user) { User.new(age: 75) }
    it "returns a message" do
      expect (user.age_based_message).to eq("Congrats on being 75!")
    end
  end
end

describe Person do
  describe "old?" do
    context "is old?" do
      let (:user) { Person.new(age: 70)}

      it "is true" do
        expect(user.old?).to be_truthy
      end
    end
  end
  describe "young?" do 
    context "is young?" do 
      let (:user) { Person.new(age: 10)}
      it "is true" do
        expect(user.young?).to be_truthy
      end
    end
  end
end

describe Author do
  let(:author) { Author.new(name: "Laila", age: 30, gender: "F")}
  it "prints author name" do
    expect(author.name).to eq("Laila")
  end
end





