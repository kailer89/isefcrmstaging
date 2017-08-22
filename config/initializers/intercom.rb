IntercomRails.config do |config|
  # == Intercom app_id
  # 
  config.app_id = ENV["INTERCOM_APP_ID"] || "qfhi2qk3"

  # == Intercom secret key 
  # This is reuqired to enable secure mode, you can find it on your Intercom 
  # "security" configuration page.
  # 
  config.api_secret = "G4xsvABylzsdlCJM7VxhnXw7-vYRVeKHWX63uSaA"

  # == Intercom API Key
  # This is required for some Intercom rake tasks like importing your users;
  # you can generate one at https://www.intercom.io/apps/api_keys.
  #
  config.api_key = "892591f651a6d0ec4afa62622f2cc1634be137a9"

  # == Curent user name
  # The method/variable that contains the logged in user in your controllers.
  # If it is `current_user` or `@user`, then you can ignore this
  #
  # config.user.current = Proc.new { current_user }
  
  # == User model class
  # The class which defines your user model
  #
  # config.user.model = Proc.new { User }

  # == User Custom Data
  # A hash of additional data you wish to send about your users.
  # You can provide either a method name which will be sent to the current
  # user object, or a Proc which will be passed the current user.
  #
  # config.user.custom_data = {
  #   :plan => Proc.new { |current_user| current_user.role }
  # }

 
  # == Inbox Style
  # This enables the Intercom inbox which allows your users to read their
  # past conversations with your app, as well as start new ones. It is 
  # disabled by default.
  #   * :default shows a small tab with a question mark icon on it
  #   * :custom attaches the inbox open event to an anchor with an
  #             id of #Intercom.
  #
  # config.inbox.style = :default 
  # config.inbox.style = :custom

  # == Inbox Counter
  # If you're using the custom inbox style, you can request that Intercom
  # insert an `em` element into your anchor with the count of unread messages
  #
  # config.inbox.counter = true
  config.inbox.style = :default
end
