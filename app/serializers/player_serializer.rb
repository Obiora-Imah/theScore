class PlayerSerializer
  include JSONAPI::Serializer
  attributes :name
  attribute :team do |object|
    object.team.name
  end

  has_one :statistic
end
