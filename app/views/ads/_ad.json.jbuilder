json.extract! ad, :id, :title, :description, :image_url, :price, :created_at, :updated_at
json.url ad_url(ad, format: :json)
