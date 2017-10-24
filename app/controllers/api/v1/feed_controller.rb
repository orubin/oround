class Api::V1::FeedController < Api::V1::ApplicationController

  def index

  end

  def get_feed
    first_post = { name: 'first', lat: 32.000, lng: 34.000, img: 'http://www.oround.polak/image.gif'}
    second_post = { name: 'second', lat: 32.000, lng: 34.000, img: 'http://www.oround.polak/image.gif'}
    third_post = { name: 'third', lat: 32.000, lng: 34.000, img: 'http://www.oround.polak/image.gif'}
    feed = [ first_post, second_post, third_post]
    render json: feed
  end

end
