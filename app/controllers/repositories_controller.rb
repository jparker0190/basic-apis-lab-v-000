class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    begin
    @resp = Faraday.get 'https://api.iextrading.com/1.0/tops/last?symbols=SNAP,fb,AIG%2b'
    @body = JSON.parse(@resp.body)

  rescue Faraday::TimeoutError
      @error = "There was a timeout. Please try again."
  end
  render 'search'
end
end
