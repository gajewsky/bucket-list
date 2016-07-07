# The service responsible for importing movies from imdb csv file
class BeersImportService
  include HTTParty
  base_uri 'https://api.untappd.com/v4/'

  def call
    offset = 0
    loop do
      response = call_untappd(offset)
      beers = response['response']['beers']['items']
      break if beers.empty?
      beers.each { |beer| import_beer(beer_hash(beer)) }
      offset += 50
    end
  end

  private

  def import_beer(hash)
    return if Beer.find_by(untappd_id: hash[:untappd_id])
    Beer.create(hash)
  end

  def call_untappd(offset)
    self.class.get("/user/beers/#{System::Settings.untappd.username}", options(offset))
  end

  def options(offset)
    {
      query: {
        client_id: System::Settings.untappd.client_id,
        client_secret: System::Settings.untappd.client_secret,
        limit: 50,
        offset: offset
      }
    }
  end

  def beer_hash(response)
    beer = response['beer']
    brewery = response['brewery']
    {
      untappd_id: beer['bid'],
      name: beer['beer_name'],
      label_url: beer['beer_label'],
      style: beer['beer_style'],
      abv: beer['beer_abv'],
      ibu: beer['beer_ibu'],
      brewery: brewery['brewery_name'],
      country: brewery['country_name'],
      user_rate: response['rating_score'],
      drink_date: response['first_created_at']
    }
  end
end
