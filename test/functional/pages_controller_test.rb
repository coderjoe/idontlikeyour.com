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
    should_route( :get, '/', :action => :index )

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
  
  context "GET on :about with no arguments" do
    setup do
      get_page :about
    end

    should_respond_with :success
    should_route :get, '/about', :action => :about
    
    should "set phrase to 'request for information about this site!'" do
      assert_not_nil @phrase
      assert_equal 'request for information about this site!', @phrase
    end

    should "display about information" do
      assert_select 'div.centered h1', 'About:'
    end
  end

  context "GET on :about with phrase 'the quick brown fox'" do
    setup do
      get_page :about, {:phrase => 'the quick brown fox'}
    end

    should "ignore the given phrase and use 'request for information about this site!'" do
      assert_not_nil @phrase
      assert_equal 'request for information about this site!', @phrase
    end
  end

  context "GET on :who with no arguments" do
    setup do
      get_page :who
    end

    should_respond_with :success
    should_route :get, '/who', :action => :who
    
    should "set phrase to 'ignorance about who I am!'" do
      assert_not_nil @phrase
      assert_equal 'ignorance about who I am!', @phrase
    end

    should "display info about Chenry" do
      assert_select 'div.centered h1', 'Who is that?'
    end
  end

  context "GET on :who with phrase 'the quick brown fox'" do
    setup do
      get_page :who, {:phrase => 'the quick brown fox'}
    end

    should "ignore the given phrase and use 'ignorance about who I am!'" do
      assert_not_nil @phrase
      assert_equal 'ignorance about who I am!', @phrase
    end
  end

  context "GET on :robot with no arguments" do
    setup do
      get_page :robot
    end

    should_respond_with :success
    should_route( :get, '/robot', :action => :robot )

    should "set phrase to the robot default" do
      assert_not_nil @phrase
      assert_equal 'BZZZZZZZZZT BLEEP BLEEP BLOOP BLOOP!', @phrase
    end

    should "have a default title" do
      assert_select 'title', "I don't like your BZZZZZZZZZT BLEEP BLEEP BLOOP BLOOP!"
    end

    should "show the robot face" do
      assert_equal 'robot', assigns['face_image']
    end
  end

  context "GET on :robot with argument 'the quick brown fox'" do
    setup do
      get_page :robot, { :phrase => 'the quick brown fox' }
    end

    should_respond_with :success

    should "set phrase to 'the quick brown fox" do
      assert_equal 'the quick brown fox', @phrase
    end
  end
end
