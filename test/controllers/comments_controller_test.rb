require 'test_helper'
=begin
class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should create comment" do
    assert_difference('Comment.count') do
      post article_comments_url(@article), params:
        {
          comment:
            {
              commenter: @comment.commenter,
              body: @comment.body,
              article_id: @article.id
            }
        }
    end

    assert_response :redirect
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete comment_url(@article)
    end

    assert_redirected_to article_url
  end
end
=end