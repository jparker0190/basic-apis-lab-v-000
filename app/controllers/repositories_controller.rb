class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @resp = Faraday.get 'https://api.iextrading.com/1.0/tops/last?symbols=SNAP,fb,AIG%2b'
    @body = JSON.parse(@resp.body)
    
    render :search
  end
end
