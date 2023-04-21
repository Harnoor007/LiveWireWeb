# Use the official Ruby image as the base image
FROM ruby:3.0.2

# Set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install the dependencies
RUN bundle install

# Copy the rest of the app into the container
COPY . .

# Run database migrations
RUN rails db:migrate

# Precompile assets
RUN rails assets:precompile

# Start the Rails app
CMD ["rails", "server", "-b", "0.0.0.0"]
