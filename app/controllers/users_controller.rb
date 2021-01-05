class UsersController < ApplicationController

  # 1ページの表示数
  PER_PAGE = 20

  def index
    @q = User.ransack(params[:q])
    # @users = User.limit(20)
    # 以下に修正
    @users = @q.result.page(params[:page]).per(PER_PAGE)
  end
end
