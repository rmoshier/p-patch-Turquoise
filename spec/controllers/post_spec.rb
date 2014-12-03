require 'rails_helper'
require 'spec_helper'

describe ".index" do
  it "must have a body" do
    expect(Post.new(body: nil)).to_not be_valid
  end
end
