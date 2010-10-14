require 'spec_helper'

describe NameGenerator::Main do
  before(:each) do
    srand(1)
  end

  it "should generate a predictable name" do
    subject.next_name.should == 'Coutbo'
  end

  it "should be repeatable for a bunch of names" do
    names = []
    20.times do
      names << subject.next_name
    end

    names.should == ["Coutbo", "Teedac", "Usax", "Orfaes", "Ciin", "Diorud", "Deboba", "Gaqtac", "Sacre", "Deoi", "Utitusar",
      "Foonqtar", "Gini", "Haos", "Nedre", "Udgu", "Bahaguga", "Tugehe", "Qtmibi", "Lace"]
  end
end