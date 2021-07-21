class Api::V1::LoginsController < Api::V1::BaseController
  before_action :wechat_user, only: [:login]
  


  

  def login
    @user = User.find_or_create_by(open_id: wechat_user.fetch("openid"))
    render json: {
      userId: @user.id
    }
  end

  private

  def wechat_user
    URL = "https://api.weixin.qq.com/sns/jscode2session".freeze
    wechat_params = {
      appId: ENV["WECHAT_APP_ID"],
      secret: ENV["WECHAT_APP_SECRET"],
      js_code: params[:code],
      grant_type: "authorization_code"
    }

    @wechat_response ||= RestClient.get(URL, params: wechat_params)
    @wechat_user ||= JSON.parse(@wechat_response.body)
  end

end
