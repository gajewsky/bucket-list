# The module responsible for maintaining metrics
module Metrics
  # The service responsible for importing activities from strava api
  class ActivitiesImportService
    attr_reader :client, :user
    def initialize(user)
      @client = Strava::Api::V3::Client.new(access_token: System::Settings.strava.access_token)
      @user = user
    end

    def call
      page = 1
      loop do
        activities = call_strava(page)
        break if activities.empty?
        activities.each { |activity| import_activity(activity_hash(activity)) }
        page += 1
      end
    end

    private

    def import_activity(hash)
      return if Activity.find_by(strava_id: hash[:strava_id])
      Activity.create(hash)
    end

    def call_strava(page)
      client.list_athlete_activities(page: page)
    end

    def activity_hash(response)
      {
        strava_id: response['id'],
        name: response['name'],
        distance: response['distance'],
        elapsed_time: response['elapsed_time'],
        activity_type: response['type'],
        start_date: response['start_date'],
        average_speed: response['average_speed'],
        average_heartrate: response['average_heartrate'],
        max_heartrate: response['max_heartrate'],
        user: user
      }
    end
  end
end
