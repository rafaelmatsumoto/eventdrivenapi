# frozen_string_literal: true

class Publisher
  def initialize
    @publish_service = Rails.configuration.publisher
  end

  def publish(topic_name, data)
    topic = @publish_service.topic topic_name
    topic.publish data.to_json
  end
end
