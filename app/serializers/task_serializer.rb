class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :time
end
