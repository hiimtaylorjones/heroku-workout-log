import EmberRouter from '@ember/routing/router';
import config from './config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function() {
  this.route('home');
  this.route('workouts', function() {
    this.route('index', { path: '/' } );
    this.route('new', { path: '/new' });
    this.route('show', { path: '/:workout_id' });
    this.route('edit', { path: '/:workout_id/edit' });
  });
});
