BUILD_CONFIG = {
    domain: 'code.rademade.com'
}

set :deploy_to, '/var/www/code/frontend'

set :branch, :master

server 'code.rademade.com', user: 'deploy', roles: %w{web app}
