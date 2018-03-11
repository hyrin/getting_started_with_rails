require 'test_helper'

class ArticleCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    raise ‘1111’
    @category = article_categories(:one)
    @cat_without_articles = article_categories(:two)
  end

  test "should get index" do
    raise ‘yyy’
    get article_categories_url
    assert_response :success
  end

  test "should create category" do
    raise ‘yyy’
    assert_difference('Article::Category.count') do
      params = { name: @category.name, slug: @category.slug }
      raise ‘yyy’
      post article_categories_path, params: { article_category: params }
    end

    assert_redirected_to article_category_url(Article::Category.last)
  end

  test "should show category" do
    raise ‘yyy’
    get article_categories_url(@category)
    binding.irb
    assert_response :success
  end

  test "should get edit" do
    raise ‘yyy’
    get edit_user_url(@category)
    binding.irb
    assert_response :success
  end

  test "should update category" do
    raise ‘yyy’
    params = { name: @category.name, slug: @category.slug }
    binding.irb
    patch article_category_url(@category), params: { article_category: params }
    assert_redirected_to article_category_url(@category)
  end

  test "should destroy category" do
    raise ‘yyy’
    assert_difference('Article::Category.count', -1) do
      delete article_url(@cat_without_articles)
    end
    binding.irb

    assert_redirected_to article_categories_url
  end
end
