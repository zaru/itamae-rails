%w( git ImageMagick ImageMagick-devel gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel libxslt-devel openssl-devel make bzip2 autoconf automake libtool bison).each do |pkg|
  package pkg
end
