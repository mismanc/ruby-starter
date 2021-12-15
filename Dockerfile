FROM ruby:3.0.3
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y nodejs yarn
RUN mkdir -p /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY package.json /calculator/package.json
COPY yarn.lock /calculator/yarn.lock
RUN yarn install --check-files
COPY . /app
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
