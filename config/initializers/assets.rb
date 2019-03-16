# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( *.eot *.woff *.ttf *.svg *.otf *.png *.jpg *.jpeg *.gif vendor.css vendor.js )
Rails.application.config.assets.paths << Rails.root.join("public", "img")
Rails.application.config.assets.paths << Rails.root.join('assets', 'js', 'core')
Rails.application.config.assets.paths << Rails.root.join('assets', 'js', 'plugins')
Rails.application.config.assets.paths << Rails.root.join('assets', 'javascripts', 'core')
Rails.application.config.assets.paths << Rails.root.join('assets', 'javascripts', 'plugins')
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )