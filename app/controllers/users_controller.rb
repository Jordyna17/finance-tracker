class UsersController < ApplicationController

ACCESS_TOKEN = "IGQVJXeS1LQ0xEVEx2ZAlJIUzlkNklxQU1hdHF5RjRhek1HeWJiMEV1di1FcDlIaHpxaDdrcG1xS01qenJmWDF1eGJUY0laZAXpHT3lHR21IQVhvYVh5NGJhSlpmVGhLb3h1dEk1N1hQRUJPWUlGelc3ZAQZDZD"

  def my_portfolio
    @tracked_stocks = current_user.stocks
  end

  def sharesocial

    client = InstagramBasicDisplayAPI.client(access_token: ACCESS_TOKEN)

    account = client.user
    @username = account.username

    @viewmedia = client.user_recent_media
    @numberofposts = account.media_count

  end

end
