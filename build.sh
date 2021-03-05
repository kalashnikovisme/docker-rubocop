docker build -t kalashnikovisme/docker-rubocop:$VERSION --build-arg RUBY_VERSION=$VERSION ./ && docker push kalashnikovisme/docker-rubocop:$VERSION
