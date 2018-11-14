json.extract! result, :id, :date, :gameType_id, :gameCount_id, :opponent_id, :cardDifference, :comment, :discussionOpp, :discussionSelf, :user_id, :critical_id, :avoidance_id, :otetsuki_id, :joker_id, :created_at, :updated_at
json.url result_url(result, format: :json)
