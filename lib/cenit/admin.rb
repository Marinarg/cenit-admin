require 'cenit/admin/version'

module Cenit
  module Admin
    include BuildInApps
    include OauthApp

    app_name 'Cenit Admin'

    oauth_authorization_for 'openid profile email session_access multi_tenant create read update delete digest'

    DEFAULT_CLOUD_URL = 'http://cenit-admin.s3-website-us-west-2.amazonaws.com'

    default_url DEFAULT_CLOUD_URL
  end
end

require 'cenit/admin/controller'
require 'cenit/admin/config'
