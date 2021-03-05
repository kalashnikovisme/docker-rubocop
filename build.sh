docker build -t $USERNAME/docker-rubocop:ruby-$VERSION --build-arg RUBY_VERSION=$VERSION ./ && docker push $USERNAME/docker-rubocop:ruby-$VERSION
