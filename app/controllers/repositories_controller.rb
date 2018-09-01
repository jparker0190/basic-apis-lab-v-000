class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    begin
      @stocks = Faraday.get 'https://api.iextrading.com/1.0/tops/last?symbols=SNAP,fb,AIG%2b'
      @body = JSON.parse(@stocks.body)
    end
    render 'search'
  end
end
