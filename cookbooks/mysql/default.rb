%w( mysql mysql-server mysql-devel ).each do |pkg|
  package pkg
end

service 'mysqld' do
  action [:enable, :start]
end
