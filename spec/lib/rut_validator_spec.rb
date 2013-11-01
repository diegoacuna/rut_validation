require "spec_helper"

describe User do
  user = User.new
  it "should have a valid rut" do
    user.rut = "16329351-K"
    user.should be_valid
    user.rut = "6354455-8"
    user.should be_valid
    user.rut = "10.137.341-k"
    user.should be_valid
  end

  it "should detect invalid rut" do
    user.rut = "7654764-8"
    user.should_not be_valid
    user.rut = "67.124.556-8"
    user.should_not be_valid
    user.rut = "16329351.-K"
    user.should_not be_valid
  end
  
  it "should contain default error message 'is not a valid rut'" do
    user.rut = "7654764-8"
    user.valid?
    user.errors[:rut].should include('is not a valid rut')
  end
end

describe UserCustomI18n do
  user = UserCustomI18n.new
  
  it "should contain customized error message 'Rut cannot be blank'" do
    user.rut = "7654764-8"
    user.valid?
    user.errors[:rut].should include('Rut cannot be blank')
  end
end