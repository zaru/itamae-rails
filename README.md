# itamae-rails

Use the itamae is a recipe to make a rails environment.

## Usage

```
cd ~/work/itamae/
git clone git@github.com:zaru/itamae-rails.git
cd itamae-rails
cp Vagrantfile.sample ~/work/project_name/Vagrantfile

cd ~/work/project_name/Vagrantfile
vagrant up

cd ~/work/itamae/itamae-rails
bundle install --path vendor/bundler
bundle exec itamae ssh --user vagrant --host 192.168.33.250 -y node/rails/development.yaml rails.rb
```
