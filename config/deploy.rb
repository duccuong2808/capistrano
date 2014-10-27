# config valid only for Capistrano 3.1
lock '3.2.1'
# server '54.169.50.149', roles: [:web, :app, :db], primary: true

# Define where can Capistrano access the source repository
# set :repo_url, 'https://github.com/[user name]/[application name].git'

set :application, 'capistrano_test'
set :user, 'ubuntu'
set :port, 2808

# Define where to put your application code
set :deploy_to, "/home/ubuntu/apps/capistrano_test"
set :deploy_via, :remote_cache
# set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, :git
set :repo_url, 'git@github.com:duccuong2808/capistrano.git'
set :branch, 'master'

set :pty, true
set :ssh_options, { :forward_agent => true }


set :rails_env, 'production'

set :keep_releases, 5
set :stage,           :production

set :format, :pretty

# Passenger
# set :passenger_roles, :app                  # this is default
# set :passenger_restart_runner, :sequence    # this is default
# set :passenger_restart_wait, 5              # this is default
# set :passenger_restart_limit, 2             # this is default

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app
# set :deploy_to, '/var/www/my_app'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do
  desc 'Hello World'
  task :hello do
    puts 'Hello World'
  end
#
#   desc 'Restart application'
#   task :restart do
#     on roles(:app), in: :sequence, wait: 5 do
#       # Your restart mechanism here, for example:
#       # execute :touch, release_path.join('tmp/restart.txt')
#     end
#   end
#
#   after :publishing, :restart
#
#   after :restart, :clear_cache do
#     on roles(:web), in: :groups, limit: 3, wait: 10 do
#       # Here we can do anything such as:
#       # within release_path do
#       #   execute :rake, 'cache:clear'
#       # end
#     end
#   end
#
end