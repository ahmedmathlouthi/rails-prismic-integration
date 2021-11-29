class HomeController < ApplicationController
  def index
    url = 'https://qonto-skilltest.prismic.io/api/v1'
    token = ENV.fetch('PRISMIC_TOKEN')
    api = Prismic.api(url, token)
    response = api.query(Prismic::Predicates.at('document.type', 'homepage'))
    @document = response.results[0]
    @subtitle_lines = @document['homepage.subtitles_list']&.as_text()&.split("\n")
    # byebug
  end
end
