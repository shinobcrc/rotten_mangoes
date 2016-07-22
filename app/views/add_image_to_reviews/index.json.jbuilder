json.array!(@add_image_to_reviews) do |add_image_to_review|
  json.extract! add_image_to_review, :id, :name, :description, :image
  json.url add_image_to_review_url(add_image_to_review, format: :json)
end
