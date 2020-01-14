class PostsController < ApplicationController
  def index
    @posts = Post.all
    json = @posts.as_json(except: :user_id,
                          include: [user: { only: %i[id nickname email] }])

    json_response(json)
  end
end
