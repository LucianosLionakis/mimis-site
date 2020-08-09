# config valid for current version and patch releases of Capistrano
lock "~> 3.14.1"

set :application, "mimis"
set :repo_url, "https://github.com/LucianosLionakis/mimis-site.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/turrentianos/#{fetch :application}"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", ".bundle", "public/system", "public/uploads"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

namespace :deploy do
    desc "reload the database with seed data"
    after :starting, :seed do
        on roles(:all) do
            within current_path do
                execute :bundle, :exec, 'rails', 'db:migrate:reset', 'RAILS_ENV=production DISABLE_DATABASE_ENVIRONMENT_CHECK=1'
                execute :bundle, :exec, 'rails', 'db:seed', 'RAILS_ENV=production'
            end
        end
    end
end