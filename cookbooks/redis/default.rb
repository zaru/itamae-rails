%w( redis ).each do |pkg|
  package pkg
end

service 'redis' do
  action [:enable, :start]
end
