require 'rails'
module KaminariI18n
  class Engine < ::Rails::Engine
  end
  
  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'kaminari-i18n' do |app|
      KaminariI18n::Railtie.instance_eval do
        pattern = pattern_from app.config.i18n.available_locales

        files = Dir[File.join(File.dirname(__FILE__), '../locales', "#{pattern}.yml")]
        I18n.load_path.concat(files)
      end      
    end
    
    protected

    def self.pattern_from(args)
      array = Array(args || [])
      array.blank? ? '*' : "{#{array.join ','}}"
    end                
  end
end
