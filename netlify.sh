gem install fluentd-ui
fluentd-ui setup
fluentd-ui start --daemonize

gem install bundler --version 1.17.3
bundle install --path vendor/bundle

docker build -t poligonosapp/fluentd-ui:1.0.0 .
docker run --net=host poligonosapp/fluentd-ui:1.0.0
docker push poligonosapp/fluentd-ui:1.0.0