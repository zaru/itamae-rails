template "/etc/logrotate.d/unicorn" do
  owner "root"
  group "root"
  source "./templates/etc/logrotate.d/unicorn.erb"
end

template "/etc/rc.d/init.d/unicorn" do
  owner "root"
  group "root"
  mode "755"
  source "./templates/etc/rc.d/init.d/unicorn.erb"
end