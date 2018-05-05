json.array! @events do |task|
  json.id task.id
  json.title task.name
  json.description task.name
  json.start task.start_time
  json.end task.due_at
  json.url task_url(task, format: :html)
end