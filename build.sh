docker build -t kalashnikovisme/docker-rubocop:ruby-$VERSION --build-arg RUBY_VERSION=$VERSION ./ && docker push kalashnikovisme/docker-rubocop:ruby-$VERSION
