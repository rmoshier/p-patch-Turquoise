require 'rails_helper'
require 'spec_helper'

describe Post do

  let(:post) {
    Post.new(
    title: 'Title',
    author: 'Bookis',
    content: 'anything',
    user_id: '1234',
    )
  }

  describe ".validates" do
    it "must have content" do
      post.content = nil
      expect(post).to_not be_valid
    end

    it "must have an author" do
      post.author = nil
      expect(post).to_not be_valid
    end

    it "must have a title" do
      post.title = nil
      expect(post).to_not be_valid
    end

    it "must have a user_id" do
      post.user_id = nil
      expect(post).to_not be_valid
    end
  end

end
