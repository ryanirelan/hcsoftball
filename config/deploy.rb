# general information
set :domain, "166.78.183.239"
set :github_user, 'ryanirelan'
set :application, 'hcsoftball'
set :location, "production"
set :user, "deploy"

# ssh info
set :port, 22
set :use_sudo, false

# scm information
set :scm, "git"
set :branch, "master"
set :scm_verbose, true
set :repository, "git@github.com:#{github_user}/#{application}.git"

# server information
set :deploy_to, "/home/#{user}/www"
set :deploy_via, :remote_cache
set :copy_exclude, [".git", ".DS_Store", ".gitignore"]

server domain, :application, :web