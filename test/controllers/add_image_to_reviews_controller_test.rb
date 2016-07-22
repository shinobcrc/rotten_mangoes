require 'test_helper'

class AddImageToReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_image_to_review = add_image_to_reviews(:one)
  end

  test "should get index" do
    get add_image_to_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_add_image_to_review_url
    assert_response :success
  end

  test "should create add_image_to_review" do
    assert_difference('AddImageToReview.count') do
      post add_image_to_reviews_url, params: { add_image_to_review: { description: @add_image_to_review.description, image: @add_image_to_review.image, name: @add_image_to_review.name } }
    end

    assert_redirected_to add_image_to_review_url(AddImageToReview.last)
  end

  test "should show add_image_to_review" do
    get add_image_to_review_url(@add_image_to_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_image_to_review_url(@add_image_to_review)
    assert_response :success
  end

  test "should update add_image_to_review" do
    patch add_image_to_review_url(@add_image_to_review), params: { add_image_to_review: { description: @add_image_to_review.description, image: @add_image_to_review.image, name: @add_image_to_review.name } }
    assert_redirected_to add_image_to_review_url(@add_image_to_review)
  end

  test "should destroy add_image_to_review" do
    assert_difference('AddImageToReview.count', -1) do
      delete add_image_to_review_url(@add_image_to_review)
    end

    assert_redirected_to add_image_to_reviews_url
  end
end
