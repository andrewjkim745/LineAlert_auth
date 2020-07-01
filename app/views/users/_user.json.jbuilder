json.extract! user, :id, :username, :email, :password_digest, :userpic, :Company, :name, :email, :contact, :avgqueuetime, :queue, :created_at, :updated_at
json.url user_url(user, format: :json)
