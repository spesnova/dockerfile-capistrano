set :stage, :prod

#
# Roles
#
role :all, ["172.17.8.101", "172.17.8.102", "172.17.8.103"]

#
# Servers
#

#
# SSH options
#
set :ssh_options, {
  user:          "core",
  keys:          ["/capistrano/.ssh/insecure_private_key"],
  forward_agent: true,
  auth_methods:  %w(publickey)
}
