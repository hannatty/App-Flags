web: bundle exec puma -C config/puma.rb
worker: bundle exec sidekiq -c 6 -q default -q mailers
release: bundle exec rake db:migrate
