FROM ruby:2.7

RUN apt-get update -yqq \
    && apt-get install -yqq --no-install-recommends \
    postgresql-client  nodejs \
    && rm -rf /var/lib/apt/lists

WORKDIR usr/src/mimis
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]

# RUN mkdir /myapp

# WORKDIR /myapp

# COPY Gemfile /myapp/Gemfile
# COPY Gemfile.lock /myapp/Gemfile.lock
# RUN bundle install

# COPY . /myapp

# # Add a script to be executed every time the container starts.
# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["sh", "./entrypoint.sh"]
# EXPOSE 3000

# # Start the main process.
# CMD ["rails", "server", "-b", "0.0.0.0"]
