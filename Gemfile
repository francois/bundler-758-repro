source :gemcutter
source "http://gems.github.com/"

gem "rails", :git => "git://github.com/bloom/rails.git", :ref => "adgear-next"

gem "will_paginate"
gem "aasm"
gem "treetop"
gem "escape"
gem "mime-types"
gem "spreadsheet"
gem "lockfile"
gem "uuid"
gem "hpricot"
gem "hoptoad_notifier"
gem "rest-client", :require => "rest_client"
gem "active_url", :git => "git://github.com/francois/active_url", :ref => "e4831dad515dcc21608eecdc3eceeeac0b24446c"
gem "redis"
gem "tokyocabinet"
gem "msgpack"
gem "broach"

# Required by Redis to prevent connection hangs when the remote host is unavailable
platforms :ruby_18 do
  gem "SystemTimer"
end

# When accessing adgear-reporting through the local lib method, we need this
gem "mongo"
gem "bson_ext"

# adgear-reporting requires <= 1.2.9
gem "json", "~> 1.2.0", "<= 1.2.9"
gem "mini_magick"

gem "pg", "~> 0.9.0"

platforms :ruby_18 do
  # Ruby's 1.9 stdlib replaced CSV with the implementation of 1.8's FasterCSV, but
  # the upgrade path is problematic: we have to change how we're loading the library.
  gem "fastercsv"
end

group :development do
  platforms :ruby_18 do
    gem "ruby-debug"

    # Generates continuous testing metrics
    gem "metric_fu"
  end

  # Only one of these is required, but for dependency resolution
  # to work correctly, both have to be specified
  gem "thin"
  gem "unicorn"

  # Only required to build adgear.js
  gem "sprockets"

  gem "capistrano"
end

group :production, :stw_production, :stw_staging, :staging, :atex_production, :wd_production, :cossette_production do
  gem "thin"
end

group :test do
  gem "shoulda", "~> 2.10.3"
  gem "ruby-debug"
  gem "mocha"
  gem "timecop"
  gem "factory_girl"
  gem "parallel"
  platforms :ruby_18 do
    gem "leftright", :require => false
    gem "ruby-debug"
  end
end

group :cucumber do
  gem "timecop"
  gem "cucumber-rails", :require => false
  gem "safariwatir",    :require => false, :git => "git://github.com/francois/safariwatir.git"
  gem "rb-appscript",   :require => false
  gem "commonwatir",    :require => false
  gem "rspec",          :require => false

  # Only one of these is required, but for dependency resolution
  # to work correctly, both have to be specified
  gem "thin"
  gem "unicorn"
end

# vim: filetype=ruby
