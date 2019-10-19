# frozen_string_literal: true

require 'google/cloud/pubsub'

Rails.configuration.to_prepare do
  Rails.configuration.publisher = Google::Cloud::Pubsub.new project: ENV['GCLOUD_PROJECT_ID'], keyfile: ENV['GCLOUD_KEY']
end
