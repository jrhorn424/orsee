require 'mina/git'
require 'mina/scp'

set :shared_paths, [
  'config/settings.php'
]

set :app_root, File.expand_path('../../', __FILE__)

set :domain, 'experiments.weber.edu'
set :deploy_to, '/u/apps/orsee'
set :repository, 'git@github.com:jrhorn424/orsee.git'
set :branch, 'weber'
set :user, 'deploy'    # Username in the server to SSH to.

task :setup => :environment do
  queue! %[mkdir -p "#{deploy_to}/shared/log"]
  queue! %[chmod g+rx,u+rwx "#{deploy_to}/shared/log"]

  queue! %[mkdir -p "#{deploy_to}/shared/config"]
  queue! %[chmod g+rx,u+rwx "#{deploy_to}/shared/config"]

  queue! %[touch "#{deploy_to}/shared/config/database.yml"]
  queue  %[echo "-----> Be sure to edit 'shared/config/database.yml'."]
end

desc "Upload secret configuration files."
task :config => :environment do
  scp_upload "#{app_root}/config/settings.php", "#{deploy_to}/shared/config/settings.php"
end

desc "Deploys the current version to the server."
task :deploy => :environment do
  deploy do
    invoke :'git:clone'
    invoke :'deploy:link_shared_paths'

    to :launch do
      queue "sudo service nginx restart"
    end
  end
end
