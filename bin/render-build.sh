set -o errexit

bundle install
./bin/rails assets:precompile
./bin/rails assets:clean
