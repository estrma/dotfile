if ! is-macos -o ! is-executable brew; then
  echo "Skipped: gem"
  return
fi

brew install gpg2

\curl -sSL https://get.rvm.io | bash -s stable

rvm install 2.3
rvm use 2.3 --default

gem install lunchy pygmentize
gem install actionmailer
gem install actionpack
gem install actionview
gem install activejob
gem install activemodel
gem install activerecord
gem install activesupport
gem install arel
gem install autoprefixer-rails
gem install babel-source
gem install babel-transpiler
gem install bcrypt
gem install bigdecimal
gem install binding_of_caller
gem install bootstrap-sass
gem install builder
gem install bundler
gem install bundler-unload
gem install byebug
gem install capybara
gem install carrierwave
gem install climate_control
gem install cocaine
gem install coffee-rails
gem install coffee-script
gem install coffee-script-source
gem install concurrent-ruby
gem install connection_pool
gem install database_cleaner
gem install debug_inspector
gem install diff-lcs
gem install erubis
gem install execjs
gem install executable-hooks
gem install factory_girl factory_girl_rails
gem install foreigner gem-wrappers globalid i18n
gem install io-console
gem install jbuilder json
gem install kaminari kaminari-actionview kaminari-activerecord kaminari-core loofah mail mailboxer markable mime-types mimemagic
gem install mini_portile
gem install minitest
gem install multi_json
gem install nested_form
gem install nokogiri
gem install nouislider-rails
gem install power_assert
gem install protected_attributes
gem install psych
gem install rack rack-pjax rack-proxy rack-test
gem install rails
gem install rails-deprecated_sanitizer
gem install rails-dom-testing
gem install rails-html-sanitizer
gem install rails_admin
gem install railties
gem install rake
gem install rdoc
gem install react-rails
gem install remotipart
gem install rolify
gem install rspec-core
gem install rspec-expectations
gem install rspec-mocks
gem install rspec-rails
gem install rspec-support
gem install rubygems-bundler
gem install rvm
gem install sass
gem install sass-rails
gem install sdoc
gem install spring
gem install sprockets
gem install sprockets-rails
gem install sqlite3
gem install temple
gem install test-unit
gem install thor
gem install thread_safe
gem install tilt
gem install turbolinks
gem install tzinfo
gem install uglifier
gem install underscore-rails
gem install web-console
gem install webpacker
gem install xpath
