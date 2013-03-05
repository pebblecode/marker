# Marker

Ruby based marking management system implementing the marker api defined at: http://docs.marker.apiary.io/

## Development

To set up

    # Install ruby, then
    gem install bundler
    bundle install

To run

    bundle exec rails s

Example route

    http://localhost:4000/assessments

## Production

The Marker API is deployed to heroku at: http://marker-api.herokuapp.com/

To deploy

    # Add git@heroku.com:marker-api.git as a remote directory, then:
    git push heroku master