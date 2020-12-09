class StatisticSerializer
  include JSONAPI::Serializer
  
  attributes :pos,
    :lng,
    :att,
    :att_per_game,
    :yards,
    :yards_avg,
    :yards_per_game,
    :touch_down,
    :first,
    :first_percentage,
    :twenty_plus,
    :forty_plus,
    :fumbles,
    :player_id,

end
