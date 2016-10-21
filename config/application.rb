require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(*Rails.groups)

module ElitesCrm02
  class Application < Rails::Application
    #タイムゾーンをTokyo,日本語化を適用
    config.time_zone = 'Tokyo'
    config.i18n.default_locale = :ja
    config.active_record.raise_in_transactional_callbacks = true
  end
end
