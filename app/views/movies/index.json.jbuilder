json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :tagline, :year, :image_file_name, :image_content_type, :image_file_size, :image_updated_at
  json.url movie_url(movie, format: :json)
end
