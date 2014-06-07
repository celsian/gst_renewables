# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'gst_renewables'
set :repo_url, 'git@github.com:celsian/gst_renewables.git'

set :keep_releases, 5

set :scm, :git
set :branch, "master"

set :use_sudo, false
set :rails_env, "production"
# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/home/administrator/gst_renewables'

set :deploy_via, :copy

set :ssh_options, { :forward_agent => true, :port => 22 }

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
  desc "Symlink shared config files"
  task :symlink_config_files do
      execute "ln -s #{ deploy_to }/shared/config/database.yml #{ current_path }/config/database.yml"
  end

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end

after "deploy", "deploy:symlink_config_files"
