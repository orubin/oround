class Api::V1::FeedController < Api::V1::ApplicationController

  def index

  end

  def get_feed
    #render json: 'code: 400' if check_params(params)

    #posts = Post.get_posts_for_user(params[:user_id], params[:lat], params[:lng])

    first_post = { name: 'first', lat: 32.000, lng: 34.000, img: 'http://www.ozarlington.com/wp-content/uploads/2017/04/bar-buffet.jpg'}
    second_post = { name: 'second', lat: 32.000, lng: 34.000, img: 'https://media-cdn.tripadvisor.com/media/photo-s/0a/7b/7b/c6/restaurant-view.jpg'}
    third_post = { name: 'third', lat: 32.000, lng: 34.000, img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Tom%27s_Restaurant%2C_NYC.jpg/1200px-Tom%27s_Restaurant%2C_NYC.jpg'}
    feed = [first_post, second_post, third_post]
    render json: { code: 200, data: feed }
  end

  def check_params(params)
    return false if params.empty?
  end

end