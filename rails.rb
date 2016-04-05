# rails server

include_recipe "selinux::disabled"
include_recipe "cookbooks/yum/default.rb"
include_recipe "cookbooks/security/default.rb"
include_recipe "cookbooks/etc_packages/default.rb"
include_recipe "cookbooks/ntp/default.rb"

include_recipe 'rtn_rbenv::user'

if node[:env] != 'development'
  include_recipe "cookbooks/nginx/default.rb"
  include_recipe "cookbooks/unicorn/default.rb"
end

include_recipe "cookbooks/mysql/default.rb"
include_recipe "cookbooks/mongodb/default.rb"
include_recipe "cookbooks/redis/default.rb"