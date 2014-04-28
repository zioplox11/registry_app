require 'spec_helper'

person = Person.create({first_name: 'Bob'})

  describe Person do

    it { should validate_presence_of :first_name }

  end


  describe 'formal name' do

    it "should return the first and last names plus a title like Mr, Mrs, Miss, and Ms" do

     person = Person.create({first_name: 'Bob', last_name: 'Smith', gender: 'male'})
     person2 = Person.create({first_name: 'Bobette', last_name: 'Smith', gender: 'female'})
     formalname = person.formal_name
     expect(formalname).to eq("Mr Bob Smith")
     formalname = person2.formal_name
     expect(formalname).to eq("Ms Bobette Smith")

     person.destroy
     person2.destroy

   end

 end





