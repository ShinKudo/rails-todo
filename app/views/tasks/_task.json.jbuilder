json.extract! task, :id, :name, :done, :created_at, :updated_at
json.url task_url(task, format: :json)
