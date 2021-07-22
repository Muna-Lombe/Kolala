class Api::V1::LoginController < Api::V1::BaseController
  
  def login
    # p 'logging in'
    @user = User.find_or_create_by(open_id: wechat_user.fetch("openid"))
    # p "@user: #{@user}"
    render json: {
      user: @user
    }
  end
  
  private
  URL = "https://api.weixin.qq.com/sns/jscode2session".freeze
  
  def wechat_user
    
    wechat_params = {
      appId: ENV["WECHAT_APP_ID"],
      secret: ENV["WECHAT_APP_SECRET"],
      js_code: params[:code],
      grant_type: "authorization_code"
    }
    # p "wechat params: #{wechat_params}"
    wechat_response = RestClient.get(URL, params: wechat_params)
    # p "wechat response: #{wechat_response}"
    JSON.parse(wechat_response.body)

  end

  
  # create migration to add open_id to user
  # code needs to be accepted by login action
  # ====== in wechat_user
  # prepare the params for tencent request
  # request to tencent to get open_id
end
