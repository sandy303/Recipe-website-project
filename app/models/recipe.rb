 #require 'httparty'
 require 'PP'
        
class Recipe
    include HTTParty

    base_uri 'http://www.recipepuppy.com/api'
    default_params onlyImages: 1

    format :json

    def self.for ( keyword = 'chocolate' )
        get("", query: { q: keyword })['results']
    end
end
pp Recipe.for "chocolate"