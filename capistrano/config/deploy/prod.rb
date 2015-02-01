set :stage, :prod

#
# Roles
#

#
# Servers
#
server "172.17.8.101"
server "172.17.8.102"
server "172.17.8.103"

#
# SSH options
#
set :ssh_options, {
  user:          "core",
  keys:          ["/capistrano/.ssh/insecure_private_key"],
  forward_agent: true,
  auth_methods:  %w(publickey)
}
