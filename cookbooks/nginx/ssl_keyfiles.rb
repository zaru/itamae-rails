directory "#{node[:nginx][:ssl_key_dir]}"
remote_directory "./files/etc/nginx/ssl" do
  action :create
  path "#{node[:nginx][:ssl_key_dir]}"
  source "./files/etc/nginx/ssl"
  mode "600"
  owner "root"
  group "root"
end
