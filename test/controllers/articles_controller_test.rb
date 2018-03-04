require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
=begin
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get category_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      params = { author_name: @article.author_name, state: @article.state, title: @article.title, text: @article.text }
      post articles_url, params: { article: params }
    end

    assert_redirected_to article_url(Article.last)
  end

  test "should show article" do
    get articles_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end
=end
  #test "should update article" do
  #  params = { author_name: @article.author_name, state: @article.state, title: @article.title, text: @article.text }
  #  patch article_url(@article), params: { article: params }
  #  assert_redirected_to article_url(@article)
  #end


  #test "should destroy article" do
  #  assert_difference('Article.count', -1) do
  #    delete article_url(@article)
  #  end

  #  assert_redirected_to article_url
  #end

end
