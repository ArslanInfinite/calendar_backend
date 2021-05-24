class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :start_time, :end_time, :all_day
end
