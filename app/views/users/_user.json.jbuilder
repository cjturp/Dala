json.extract! user, :id, :name, :email, :grade, :school_name, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
