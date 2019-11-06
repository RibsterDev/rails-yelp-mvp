json.extract! review, :id, :content, :rating, :restaurant, :created_at, :updated_at
json.url review_url(review, format: :json)
