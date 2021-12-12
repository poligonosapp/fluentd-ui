gem install fluentd-ui
fluentd-ui setup
fluentd-ui start --daemonize

gem install bundler --version 1.17.3
bundle install --path vendor/bundle

docker build -t fluent/fluentd-ui:1.0.0 .
docker run --net=host fluent/fluentd-ui:1.0.0