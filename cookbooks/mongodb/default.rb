remote_file "/etc/yum.repos.d/mongodb-org-2.6.repo" do
  owner "root"
  group "root"
  mode "644"
  source "./files/etc/yum.repos.d/mongodb-org-2.6.repo"
end

%w(mongodb mongodb-server).each do |pkg|
  package pkg
end

service 'mongod' do
  action [:enable, :start]
end