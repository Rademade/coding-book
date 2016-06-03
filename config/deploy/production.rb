BUILD_CONFIG = {
    domain: 'code.rademade.com'
}

set :deploy_to, '/home/code/website-frontend'

set :branch, :master

server 'code.rademade.com', user: 'code', roles: %w{web app}
