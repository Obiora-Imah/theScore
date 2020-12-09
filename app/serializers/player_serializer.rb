class PlayerSerializer
  include JSONAPI::Serializer
  attributes :name
  attribute :team do |object|
    object.team.name
  end

  attribute :pos do |object|
    object.statistic.pos
  end

  attribute :lng do |object|
    object.statistic.lng
  end

  attribute :att do |object|
    object.statistic.att
  end

  attribute :att_per_game do |object|
    object.statistic.att_per_game
  end

  attribute :yards do |object|
    object.statistic.yards
  end

  attribute :yards_avg do |object|
    object.statistic.yards_avg
  end

  attribute :yards_per_game do |object|
    object.statistic.yards_per_game
  end

  attribute :touch_down do |object|
    object.statistic.touch_down
  end

  attribute :first do |object|
    object.statistic.first
  end

  attribute :first_percentage do |object|
    object.statistic.first_percentage
  end

  attribute :twenty_plus do |object|
    object.statistic.twenty_plus
  end

  attribute :forty_plus do |object|
    object.statistic.forty_plus
  end

  attribute :fumbles do |object|
    object.statistic.fumbles
  end

  attribute :player_id do |object|
    object.statistic.player_id
  end
end
