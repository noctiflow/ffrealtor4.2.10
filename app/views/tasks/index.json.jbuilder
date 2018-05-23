json.array! @events do |task|
  json.id task.id
  json.title task.name
  if task.assigned_to.present?
    json.description User.find(task.assigned_to).name
  else
    json.description "unassigned"
  end
  json.start task.start_time
  json.end task.due_at
  # json.url task_url(task, format: :html)
  json.url '/tasks'
end
