require 'torba'

class Assets < Sinatra::Base
  configure do
    set :assets, assets = (Sprockets::Environment.new { |env|
      env.append_path(settings.root + "/assets/images")
      env.append_path(settings.root + "/assets/stylesheets")
      env.append_path(settings.root + "/assets/javascripts")
      Torba.load_path.each do |path|
        env.append_path(path)
      end
    })
  end

  configure :production do
    assets.js_compressor  = :uglify
    assets.css_compressor = :scss
    assets.cache = Sprockets::Cache::FileStore.new('/tmp')
  end

  get "/assets/application.js" do
    cache_control :public, max_age: 600
    content_type("application/javascript")
    settings.assets["application.js"]
  end

  get "/assets/application.css" do
    cache_control :public, max_age: 600
    content_type("text/css")
    settings.assets["application.css"]
  end

  %w{jpg png}.each do |format|
    get "/assets/:folder/:image.#{format}" do |folder, image|
      content_type("image/#{format}")
      settings.assets["#{folder}/#{image}.#{format}"]
    end
  end
end
