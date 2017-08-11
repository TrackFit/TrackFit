json.extract! question, :id, :content, :body, :created_at, :updated_at
json.url question_url(question, format: :json)
