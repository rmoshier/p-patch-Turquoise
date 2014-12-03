require 'rails_helper'
require 'spec_helper'

  describe ".validates" do
    it "must have a content" do
      expect(Post.new(content: nil)).to_not be_valid
    end

    it "must have author" do
      expect(Post.new(author: nil)).to_not be_valid
    end
  end
