# encoding: utf-8
module WeixinAuthorize
  module Api
    module Semantic

      # # 获取用户基本信息
      # # https://api.weixin.qq.com/cgi-bin/user/info?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN
      # # lang: zh_CN, zh_TW, en
      # def user(openid, lang="zh_CN")
      #   user_info_url = "#{user_base_url}/info"
      #   http_get(user_info_url, {openid: openid, lang: lang})
      # end
      #
      # # 获取关注者列表
      # # https://api.weixin.qq.com/cgi-bin/user/get?access_token=ACCESS_TOKEN&next_openid=NEXT_OPENID
      # def followers(next_openid="")
      #   followers_url = "#{user_base_url}/get"
      #   http_get(followers_url, {next_openid: next_openid})
      # end
      #
      # # 设置备注名
      # # http请求方式: POST（请使用https协议）
      # # https://api.weixin.qq.com/cgi-bin/user/info/updateremark?access_token=ACCESS_TOKEN
      # # POST数据格式：JSON
      # # POST数据例子：
      # # {
      # #   "openid":"oDF3iY9ffA-hqb2vVvbr7qxf6A0Q",
      # #   "remark":"pangzi"
      # # }
      def search(query, category,appid,uid)
        search_url = "/semantic/semproxy/search"
        payload = {
            query: query,
            category: category,
            #appid: appid,
            uid:uid
        }
        http_post(search_url, payload)
      end

      private

        def semantic_base_url
          #"/semantic/semproxy/search?access_token=YOUR_ACCESS_TOKEN"
          "/semantic/semproxy"
        end

    end
  end
end
