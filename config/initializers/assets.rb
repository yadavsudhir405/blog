# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
# Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
#  Rails.application.config.assets.precompile += %w( homepage/index.js )


Rails.application.config.assets.precompile = %w( manifest.js )
Rails.application.config.serve_static_files = true
Rails.application.config.assets.check_precompiled_asset = false

Dir.glob("#{Rails.root}/app/assets/images/**/").each do |path|
  Rails.application.config.assets.paths << path
end
