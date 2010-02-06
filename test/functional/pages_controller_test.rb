require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  def get_page( *args )
    get( *args )
    @phrase = assigns['phrase']
  end

  context "GET on :index with no arguments" do
    setup do
      get_page :index
    end

    should_respond_with :success

    should "set phrase to the default" do
      assert_not_nil @phrase
      assert_equal 'foods which smell like poop!', @phrase
    end

    should "have a default title" do
      assert_select 'title', "I don't like your foods which smell like poop!"
    end
  end

  context "GET on :index with argument 'the quick brown fox'" do
    setup do
      get_page :index, { :phrase => 'the quick brown fox' }
    end

    should_respond_with :success

    should "set phrase to 'the quick brown fox" do
      assert_equal 'the quick brown fox', @phrase
    end
  end
end
