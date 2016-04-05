%w( git
sqlite-devel
ImageMagick
ImageMagick-devel
gcc-c++
patch
readline
readline-devel
zlib
zlib-devel
libyaml-devel
libffi-devel
libxslt-devel
openssl-devel
make
bzip2
autoconf
automake
libtool
bison
curl-devel ).each do |pkg|
  package pkg
end

package "nodejs" do
  options "--enablerepo=epel"
  action :install
end
