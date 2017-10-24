class Api::V1::FeedController < Api::V1::ApplicationController

  def index

  end

  def get_feed
    render json: 'code: 400' if check_params(params)

    posts = Post.get_posts_for_user(params[:user_id], params[:lat], params[:lng])

    first_post = { name: 'first', lat: 32.000, lng: 34.000, img: 'http://www.oround.polak/image.gif'}
    second_post = { name: 'second', lat: 32.000, lng: 34.000, img: 'http://www.oround.polak/image.gif'}
    third_post = { name: 'third', lat: 32.000, lng: 34.000, img: 'http://www.oround.polak/image.gif'}
    feed = [ first_post, second_post, third_post]
    render json: feed
  end

  def check_params(params)
    return false if params.empty?
  end

end
