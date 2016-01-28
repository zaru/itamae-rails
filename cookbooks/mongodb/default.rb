remote_file "/etc/yum.repos.d/mongodb-org-2.6.repo" do
  owner "root"
  group "root"
  mode "644"
  source "./files/etc/yum.repos.d/mongodb-org-2.6.repo"
end

%w(mongodb-org mongodb-org-server mongodb-org-shell mongodb-org-mongos mongodb-org-tools).each do |pkg|
  package pkg
end

service 'mongodb' do
  action [:enable, :start]
end