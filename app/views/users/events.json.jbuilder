# json.array!(@user.events) do |event|
#   json.extract! event, :id, :title
#   json.start event.start_date
#   json.end event.end_date
#   json.url event_url(event, format: :html)
# end

json.array!(@current_user.attends) do |attend|
  json.extract! attend.event, :id, :title
  json.start attend.event.start_date
  json.end attend.event.end_date
end
