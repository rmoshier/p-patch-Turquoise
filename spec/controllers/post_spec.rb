require 'rails_helper'
require 'spec_helper'

  describe ".validates" do
    it "must have a body" do
      expect(Post.new(content: nil)).to_not be_valid
    end
  end
