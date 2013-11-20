require 'spec_helper'

describe Micropost do

  let(:user) { FactoryGirl.create(:user) }
  before { @micropost = user.microposts.build(item: "Lorem", category: "ipsum", content: "Lorem ipsum") }

  subject { @micropost }

  it { should respond_to(:item) }
  it { should respond_to(:category) }
  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @micropost.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank item" do
    before { @micropost.item = " " }
    it { should_not be_valid }
  end

  describe "with item that is too long" do
    before { @micropost.item = "a" * 51 }
    it { should_not be_valid }
  end

  describe "with blank category" do
    before { @micropost.category = " " }
    it { should_not be_valid }
  end

  describe "with blank content" do
    before { @micropost.content = " " }
    it { should_not be_valid }
  end

  describe "with content that is too long" do
    before { @micropost.content = "a" * 261 }
    it { should_not be_valid }
  end
end
